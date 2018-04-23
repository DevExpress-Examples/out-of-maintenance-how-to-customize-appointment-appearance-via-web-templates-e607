<%@ Control Language="vb" AutoEventWireup="true" CodeFile="MyAppointmentForm.ascx.vb" Inherits="Templates_MyAppointmentForm" %>
<%@ Register Assembly="DevExpress.Web.v15.2" Namespace="DevExpress.Web" TagPrefix="dxe" %>

    <table  style="vertical-align:top; height:100%">
    <tr>
        <td style="width: 57px">
            <dxe:ASPxLabel ID="lblSubject" runat="server" Text="Subject:" AssociatedControlID="tbSubject"></dxe:ASPxLabel>
        </td>
        <td colspan="3" style="width:100%">
            <dxe:ASPxTextBox ID="tbSubject" runat="server" Width="100%" Text='<%#CType(Container, MyAppointmentFormTemplateContainer).Appointment.Subject%>'></dxe:ASPxTextBox>
        </td>
    </tr>
    <tr>
        <td>
            <dxe:ASPxLabel ID="lblLocation" runat="server" Text="Location:" AssociatedControlID="tbLocation"></dxe:ASPxLabel>
        </td>
        <td style="width:50%">
            <dxe:ASPxTextBox ID="tbLocation" width="100%" runat="server" Text='<%#CType(Container, MyAppointmentFormTemplateContainer).Appointment.Location%>'></dxe:ASPxTextBox>
        </td>
        <td>
            <dxe:ASPxLabel ID="lblLabel" runat="server" Text="Price:" AssociatedControlID="tbPrice"></dxe:ASPxLabel>
        </td>
        <td style="width:50%">
            <dxe:ASPxTextBox ID="tbPrice" width="100%" runat="server" Text='<%#CType(Container, MyAppointmentFormTemplateContainer).Price%>'></dxe:ASPxTextBox> 
        </td>
    </tr>
    <tr>
        <td style="white-space:nowrap">
            <dxe:ASPxLabel ID="lblStartTime" runat="server" Text="Start time:" AssociatedControlID="edtStartDate"></dxe:ASPxLabel>
        </td>
        <td colspan="3">
            <dxe:aspxdateedit id="edtStartDate" runat="server" Date='<%#CType(Container, MyAppointmentFormTemplateContainer).Start%>' Width="100%" EditFormat="DateTime"> </dxe:aspxdateedit>
        </td>
    </tr>
    <tr>
        <td style="white-space:nowrap">
            <dxe:ASPxLabel ID="lblEndTime" runat="server" Text="End time:" AssociatedControlID="edtEndDate"></dxe:ASPxLabel>
        </td>
        <td colspan="3">
            <dxe:aspxdateedit id="edtEndDate" runat="server" Date='<%#CType(Container, MyAppointmentFormTemplateContainer).End%>' Width="100%" EditFormat="DateTime"></dxe:aspxdateedit>
        </td>
    </tr>
    <tr>
        <td colspan="4"> 
            <dxe:ASPxLabel ID="lblDescription" runat="server" Text="Description:" AssociatedControlID="memDescription">
            </dxe:ASPxLabel>
        </td>
    </tr>
    <tr>
        <td colspan="4">
            <dxe:ASPxMemo ID="memDescription" runat="server" Rows="4" Text='<%#CType(Container, MyAppointmentFormTemplateContainer).Appointment.Description%>' Width="100%"></dxe:ASPxMemo>
        </td>
    </tr>    
    <tr>
        <td colspan="4">
            <table>
                <tr>
                    <td>
                        <dxe:ASPxButton runat="server" ID="btnOk" Text="OK" UseSubmitBehavior="false" AutoPostBack="false" EnableViewState="false" Width="91px" OnClientClick='<%#CType(Container, MyAppointmentFormTemplateContainer).SaveHandler%>' />
                    </td>
                    <td>
                        <dxe:ASPxButton runat="server" ID="btnCancel" Text="Cancel" UseSubmitBehavior="false" AutoPostBack="false" EnableViewState="false" Width="91px" OnClientClick='<%#CType(Container, MyAppointmentFormTemplateContainer).CancelHandler%>' />
                    </td>
                    <td>
                        <dxe:ASPxButton runat="server" ID="btnDelete" Text="Delete" UseSubmitBehavior="false" AutoPostBack="false" EnableViewState="false" Width="91px" OnClientClick='<%#CType(Container, MyAppointmentFormTemplateContainer).DeleteHandler%>'  Enabled='<%#CType(Container, DevExpress.Web.ASPxScheduler.AppointmentFormTemplateContainer).CanDeleteAppointment%>'/>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>