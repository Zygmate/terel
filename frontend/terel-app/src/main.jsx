import React from 'react'
import ReactDOM from 'react-dom/client'
import App from './App.jsx'
import './index.css'
import { Navigate, RouterProvider, createBrowserRouter } from 'react-router-dom'
import Home from './components/Home.jsx'
import ErrorPage from './components/ErrorPage.jsx'
import AnagraphicForm from './components/anagraphicForm.jsx'
import AboutUs from './components/AboutUs.jsx'

const router = createBrowserRouter([
    {
        path: "/",
        element: <App />,
        errorElement: <ErrorPage />,
        children: [
            { 
                index: true,
                element: <Navigate to="/home" replace />
            },
            {
                path: "/home",
                element: <Home />
            },
            {
                path:"new/build/",
                element:<AnagraphicForm />
            },
            {
                path:"/about",
                element: <AboutUs />
            }
        ]
    }
])
ReactDOM.createRoot(document.getElementById('root')).render(
    <React.StrictMode>
        <RouterProvider router={router} />
    </React.StrictMode>,
)
