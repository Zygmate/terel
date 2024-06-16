import React from 'react'
import ReactDOM from 'react-dom/client'
import App from './App.jsx'
import './index.css'
import { Navigate, RouterProvider, createBrowserRouter } from 'react-router-dom'
import Home from './pages/Home.jsx'
import ErrorPage from './pages/ErrorPage.jsx'
import AboutUs from './pages/AboutUs.jsx'
import CreateBuildAnagraphics from './pages/CreateBuildAnagraphics.jsx'
import CreateBuildMain from './pages/CreateBuildMain.jsx'

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
                element:<CreateBuildAnagraphics />
            },
            {
                path:"/about",
                element: <AboutUs />
            },
            {
                path:"/new/build/:id",
                element: <CreateBuildMain />
            }

        ]
    }
])
ReactDOM.createRoot(document.getElementById('root')).render(
    <React.StrictMode>
        <RouterProvider router={router} />
    </React.StrictMode>,
)
