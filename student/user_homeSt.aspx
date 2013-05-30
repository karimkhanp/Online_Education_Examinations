<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="user_homeSt.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="style1">
        <tr>
            <td width="33.33%" >
                <fieldset><legend style="font-family:Cambria; color:Fuchsia; border-color:Black; " >
                    About Website</legend>
                    
                                                 <span style="font-size:medium; font-family:Calibri; color: #034F87;">This 
                                                 site would help the aspiring students to study for the online entrance exams 
                                                 (TOEFL,IELTS,GRE,GATE,SAT etc.) and would also provide facility of online mock 
                                                 exams to help them prepare better. Examination is very important procedure in 
                                                 the teaching process. It plays crucial role in motivating the students to learn.</span></fieldset>&nbsp;</td>
            <td width="33.33%"><fieldset><legend style="font-family:Cambria; color:Fuchsia; border-color:Black; " >GRE</legend>
                    <span style="font-family:Calibri; font-size:medium; color:#034F87; ">
                    Graduate Record Examination is a Standardized test that measures verbal, 
                    mathematical and analytical skills. It is intended to help the graduate schools 
                    (of all fields other than business) assess the potential of applicants for 
                    advanced study . Nearly 2300 universities in the US require GRE® scores from 
                    each applicant. 
                        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/GRE/GreInfo.aspx" 
                    runat="server" Text="More  &gt;&gt; "></asp:HyperLink>
                    </span>
                </fieldset>
                &nbsp;</td>
            <td width="33.33%"><fieldset><legend style="font-family:Cambria; color:Fuchsia; border-color:Black; " >TOEFL</legend>
                   <span class="Apple-style-span" 
                    style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; ">
                <span class="Apple-style-span" 
                    style="font-family: calibri; font-size: medium; text-align: justify; -webkit-border-horizontal-spacing: 10px; -webkit-border-vertical-spacing: 10px; color: #034F87;">
                The Test of English as a Foreign Language (TOEFL) is required for international 
                students seeking an admission in US universities and colleges for higher 
                studies. It&nbsp; measures the ability of non-native speakers of English to use 
                and understand North American English as it is spoken, written and heard in 
                college and university.<span style="font-family:Calibri; font-size:medium; color:#034F87; "><asp:HyperLink 
                    ID="HyperLink4" NavigateUrl="~/TOEFL/ToeflInfo.aspx" 
                    runat="server" Text="More  &gt;&gt; "></asp:HyperLink>
                    </span>
                </span></span>  
                </fieldset>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="3" 
                style="font-family: calibri; color: #AECC06; height: 7px; font-size: xx-large;" 
                width="100%">
                WELCOME,
                <asp:Label ID="Label2" runat="server" Font-Names="Palatino Linotype" 
                    ForeColor="#8C48FD"></asp:Label>
            </td>
        
        </tr>
        <tr>
            <td width="33.33%"><fieldset><legend style="font-family:Cambria; color:Fuchsia; border-color:Black; " >IELTS</legend>
                   <span style="font-family:Calibri; font-size:medium; color:#034F87; ">IELTS is 
                an English Language Proficiency test that is required to be taken by non-native 
                students for study in countries where the medium of instruction is English. 
                Among the popular study destinations IELTS is<span 
                    class="Apple-converted-space">&nbsp;</span><strong>accepted by universities in 
                UK, Australia, New Zealand and Canada</strong>. It has become a mandatory test 
                for study in Australia.<span style="font-family:Calibri; font-size:medium; color:#034F87; "><asp:HyperLink 
                    ID="HyperLink2" NavigateUrl="~/IELTS/IeltsInfo.aspx" 
                    runat="server" Text="More  &gt;&gt; "></asp:HyperLink>
                    </span>
                </span> 
                </fieldset>
                &nbsp;</td>
            <td width="33.33%"><fieldset><legend style="font-family:Cambria; color:Fuchsia; border-color:Black; " >SAT</legend>
                    <span style="font-family:Calibri; font-size:medium; color:#034F87; ">The SAT (technically known as the 
                                             SAT I) is a general test of verbal and quantitative reasoning accepted and 
                                             required for admission to a bachelor degree program in a US university or 
                                             college.&nbsp; The test is required for admission to undergraduate programs of most 
                                             US universities. Many universities also require you to take SAT-II tests.<span style="font-family:Calibri; font-size:medium; color:#034F87; "><asp:HyperLink 
                    ID="HyperLink3" NavigateUrl="~/SAT/SatInfo.aspx" 
                    runat="server" Text="More  &gt;&gt; "></asp:HyperLink>
                    </span>
                </span></fieldset>
                &nbsp;</td>
            <td width="33.33%"><fieldset><legend style="font-family:Cambria; color:Fuchsia; border-color:Black; " >GATE</legend>
                   <span style="font-family:Calibri; font-size:medium; color:#034F87; ">
                   If you are seeking admission to postgraduate programmes in reputed engineering 
    colleges and institutes in India you have to crack GATE.<strong>Graduate 
    Aptitude Test in Engineering</strong><span class="Apple-converted-space">&nbsp;</span>(GATE), 
                is an all-India examination which is administered in eight zones across India by 
                the GATE Committee. The committee comprises faculty .....<asp:HyperLink 
                    ID="HyperLink5" NavigateUrl="~/GATE/GateInfo.aspx" 
                    runat="server" Text="More  &gt;&gt; "></asp:HyperLink>
                   </span>
                </fieldset>
                &nbsp;</td>
        </tr>
    </table>
    
    
    
</asp:Content>    

