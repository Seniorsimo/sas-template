import React, { useState, useEffect } from 'react';

function Admin() {
  const [rooms, setRooms] = useState([]);
  const [roomName, setRoomName] = useState('');

  useEffect(() => {
    fetch('/api/rooms')
      .then((res) => res.json())
      .then((data) => setRooms(data));
  }, []);

  const addRoom = async (e) => {
    e.preventDefault();
    if (!roomName) {
      alert('Please enter a room name.');
      return;
    }

    const newRoom = { name: roomName };

    const res = await fetch('/api/rooms', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify(newRoom),
    });

    if (res.ok) {
      const room = await res.json();
      setRooms([...rooms, room]);
      setRoomName('');
    } else {
      alert('Failed to add room.');
    }
  };

  const deleteRoom = async (id) => {
    const res = await fetch(`/api/rooms/${id}`, {
      method: 'DELETE',
    });

    if (res.ok) {
      setRooms(rooms.filter((room) => room.id !== id));
    } else {
      alert('Failed to delete room.');
    }
  };

  return (
    <div>
      <h2>Room Management</h2>
      <div className="add-room-form">
        <h3>Add a Room</h3>
        <form onSubmit={addRoom}>
          <label>
            Room Name:
            <input
              type="text"
              value={roomName}
              onChange={(e) => setRoomName(e.target.value)}
            />
          </label>
          <button type="submit">Add</button>
        </form>
      </div>
      <div className="room-list">
        <h3>Existing Rooms</h3>
        <ul>
          {rooms.map((room) => (
            <li key={room.id}>
              {room.name}
              <button onClick={() => deleteRoom(room.id)}>Delete</button>
            </li>
          ))}
        </ul>
      </div>
    </div>
  );
}

export default Admin;
