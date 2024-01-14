# Project Structure

## `backend`
The backend is written in Nim. It is a server serving a REST-like HTTP interface for the frontend.

## `frontend`
The frontend is written in pure JavaScript. It uses the backend logic and displays its result in the application.

Generated with Vite React.

## Common API

### Objects

#### Character Background

##### Success
```json
{
  id: -1,
  status: "OK",
  msg: "",
  data: [
    {
      id: "",
      name: ""
    },
    {
      id: "",
      name: ""
    },
    {
      id: "",
      name: ""
    }
  ]
}
```

##### Failure
```json
{
  id: -1,
  status: "ERROR",
  msg: "ID unknown.",
  data: []
}
```