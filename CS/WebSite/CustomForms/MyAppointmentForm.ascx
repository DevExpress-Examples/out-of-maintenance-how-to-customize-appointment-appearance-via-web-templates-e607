<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MyAppointmentForm.ascx.cs" Inherits="Templates_MyAppointmentForm" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v8.1" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>

    <table  style="vertical-align:top; height:100%">
    <tr>
        <td style="width: 57px">
            <dxe:ASPxLabel ID="lblSubject" runat="server" Text="Subject:" AssociatedControlID="tbSubject"></dxe:ASPxLabel>
        </td>
        <td colspan="3" style="width:100%">
            <dxe:ASPxTextBox ID="tbSubject" runat="server" Width="100%" Text='<%#((MyAppointmentFormTemplateContainer)Container).Appointment.Subject %>'></dxe:ASPxTextBox>
        </td>
    </tr>
    <tr>
        <td>
            <dxe:ASPxLabel ID="lblLocation" runat="server" Text="Location:" AssociatedControlID="tbLocation"></dxe:ASPxLabel>
        </td>
        <td style="width:50%">
            <dxe:ASPxTextBox ID="tbLocation" width="100%" runat="server" Text='<%#((MyAppointmentFormTemplateContainer)Container).Appointment.Location %>'></dxe:ASPxTextBox>
        </td>
        <td>
            <dxe:ASPxLabel ID="lblLabel" runat="server" Text="Price:" AssociatedControlID="tbPrice"></dxe:ASPxLabel>
        </td>
        <td style="width:50%">
            <dxe:ASPxTextBox ID="tbPrice" width="100%" runat="server" Text='<%#((MyAppointmentFormTemplateContainer)Container).Price %>'></dxe:ASPxTextBox> 
        </td>
    </tr>
    <tr>
        <td style="white-space:nowrap">
            <dxe:ASPxLabel ID="lblStartTime" runat="server" Text="Start time:" AssociatedControlID="edtStartDate"></dxe:ASPxLabel>
        </td>
        <td colspan="3">
            <dxe:aspxdateedit id="edtStartDate" runat="server" Date='<%#((MyAppointmentFormTemplateContainer)Container).Start %>' Width="100%" EditFormat="DateTime"> </dxe:aspxdateedit>
        </td>
    </tr>
    <tr>
        <td style="white-space:nowrap">
            <dxe:ASPxLabel ID="lblEndTime" runat="server" Text="End time:" AssociatedControlID="edtEndDate"></dxe:ASPxLabel>
        </td>
        <td colspan="3">
            <dxe:aspxdateedit id="edtEndDate" runat="server" Date='<%#((MyAppointmentFormTemplateContainer)Container).End %>' Width="100%" EditFormat="DateTime"></dxe:aspxdateedit>
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
            <dxe:ASPxMemo ID="memDescription" runat="server" Rows="4" Text='<%#((MyAppointmentFormTemplateContainer)Container).Appointment.Description %>' Width="100%"></dxe:ASPxMemo>
        </td>
    </tr>    
    <tr>
        <td colspan="4">
            <table>
                <tr>
                    <td>
                        <dxe:ASPxButton runat="server" ID="btnOk" Text="OK" UseSubmitBehavior="false" AutoPostBack="false" EnableViewState="false" Width="91px" OnClientClick='<%# ((MyAppointmentFormTemplateContainer)Container).SaveHandler %>' />
                    </td>
                    <td>
                        <dxe:ASPxButton runat="server" ID="btnCancel" Text="Cancel" UseSubmitBehavior="false" AutoPostBack="false" EnableViewState="false" Width="91px" OnClientClick='<%# ((MyAppointmentFormTemplateContainer)Container).CancelHandler %>' />
                    </td>
                    <td>
                        <dxe:ASPxButton runat="server" ID="btnDelete" Text="Delete" UseSubmitBehavior="false" AutoPostBack="false" EnableViewState="false" Width="91px" OnClientClick='<%# ((MyAppointmentFormTemplateContainer)Container).DeleteHandler %>'  Enabled='<%# ((DevExpress.Web.ASPxScheduler.AppointmentFormTemplateContainer)Container).CanDeleteAppointment %>'/>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>