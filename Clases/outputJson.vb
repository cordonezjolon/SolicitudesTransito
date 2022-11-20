Imports System
Imports System.Collections.Generic
Imports System.Web


Public Class outputJson

    Public Property result() As String
        Get
            Return m_result
        End Get
        Set(value As String)
            m_result = value
        End Set
    End Property
    Private m_result As String

    Public Property id() As Integer
        Get
            Return m_id
        End Get
        Set(value As Integer)
            m_id = value
        End Set
    End Property
    Private m_id As Integer

    Public Property err() As String
        Get
            Return m_err
        End Get
        Set(value As String)
            m_err = value
        End Set
    End Property
    Private m_err As String


End Class
