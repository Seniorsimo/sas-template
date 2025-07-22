import React, { useState, useEffect } from 'react';
import './App.css';

function App() {
  const [rooms, setRooms] = useState([]);
  const [bookings, setBookings] = useState([]);
  const [selectedRoom, setSelectedRoom] = useState(null);
  const [startTime, setStartTime] = useState('');
  const [endTime, setEndTime] = useState('');

  useEffect(() => {
    fetch('/api/rooms')
      .then((res) => res.json())
      .then((data) => setRooms(data));

    fetch('/api/bookings')
      .then((res) => res.json())
      .then((data) => setBookings(data));
  }, []);

  const handleBooking = async (e) => {
    e.preventDefault();
    if (!selectedRoom || !startTime || !endTime) {
      alert('Please select a room and a time slot.');
      return;
    }

    const newBooking = {
      room_id: selectedRoom,
      user_id: 1, // Hardcoded user_id for now
      start_time: startTime,
      end_time: endTime,
    };

    const res = await fetch('/api/bookings', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify(newBooking),
    });

    if (res.ok) {
      const booking = await res.json();
      setBookings([...bookings, booking]);
      setSelectedRoom(null);
      setStartTime('');
      setEndTime('');
    } else {
      alert('Failed to create booking.');
    }
  };

  const cancelBooking = async (id) => {
    const res = await fetch(`/api/bookings/${id}`, {
      method: 'DELETE',
    });

    if (res.ok) {
      setBookings(bookings.filter((booking) => booking.id !== id));
    } else {
      alert('Failed to cancel booking.');
    }
  };

  return (
    <div className="App">
      <header className="App-header">
        <h1>Meeting Room Booking</h1>
      </header>
      <main>
        <div className="rooms">
          <h2>Rooms</h2>
          <ul>
            {rooms.map((room) => (
              <li
                key={room.id}
                className={selectedRoom === room.id ? 'selected' : ''}
                onClick={() => setSelectedRoom(room.id)}
              >
                {room.name}
              </li>
            ))}
          </ul>
        </div>
        <div className="booking-form">
          <h2>Book a Room</h2>
          <form onSubmit={handleBooking}>
            <label>
              Start Time:
              <input
                type="datetime-local"
                value={startTime}
                onChange={(e) => setStartTime(e.target.value)}
              />
            </label>
            <label>
              End Time:
              <input
                type="datetime-local"
                value={endTime}
                onChange={(e) => setEndTime(e.target.value)}
              />
            </label>
            <button type="submit">Book</button>
          </form>
        </div>
        <div className="bookings">
          <h2>Bookings</h2>
          <ul>
            {bookings.map((booking) => (
              <li key={booking.id}>
                Room {booking.room_id}: {new Date(booking.start_time).toLocaleString()} -{' '}
                {new Date(booking.end_time).toLocaleString()}
                <button onClick={() => cancelBooking(booking.id)}>Cancel</button>
              </li>
            ))}
          </ul>
        </div>
      </main>
    </div>
  );
}

export default App;
