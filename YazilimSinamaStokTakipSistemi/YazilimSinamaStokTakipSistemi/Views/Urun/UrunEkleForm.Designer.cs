﻿namespace YazilimSinamaStokTakipSistemi.Views.Urun
{
    partial class UrunEkleForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.ribbonControl1 = new DevExpress.XtraBars.Ribbon.RibbonControl();
            this.ribbonPage1 = new DevExpress.XtraBars.Ribbon.RibbonPage();
            this.ribbonStatusBar1 = new DevExpress.XtraBars.Ribbon.RibbonStatusBar();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.txtSatinAlinilanKurum = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.txtToptanFiyat = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.calendarControl1 = new DevExpress.XtraEditors.Controls.CalendarControl();
            this.txt_urunAdet = new System.Windows.Forms.TextBox();
            this.txt_UrunBirimFiyat = new System.Windows.Forms.TextBox();
            this.txt_UrunAdi = new System.Windows.Forms.TextBox();
            this.btn_UrunEkle = new DevExpress.XtraEditors.SimpleButton();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.ribbonControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.calendarControl1.CalendarTimeProperties)).BeginInit();
            this.SuspendLayout();
            // 
            // ribbonControl1
            // 
            this.ribbonControl1.ExpandCollapseItem.Id = 0;
            this.ribbonControl1.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.ribbonControl1.ExpandCollapseItem});
            this.ribbonControl1.Location = new System.Drawing.Point(0, 0);
            this.ribbonControl1.MaxItemId = 1;
            this.ribbonControl1.Name = "ribbonControl1";
            this.ribbonControl1.Pages.AddRange(new DevExpress.XtraBars.Ribbon.RibbonPage[] {
            this.ribbonPage1});
            this.ribbonControl1.Size = new System.Drawing.Size(1103, 185);
            this.ribbonControl1.StatusBar = this.ribbonStatusBar1;
            // 
            // ribbonPage1
            // 
            this.ribbonPage1.Name = "ribbonPage1";
            this.ribbonPage1.Text = "Stok Ürün Ekleme";
            // 
            // ribbonStatusBar1
            // 
            this.ribbonStatusBar1.Location = new System.Drawing.Point(0, 779);
            this.ribbonStatusBar1.Name = "ribbonStatusBar1";
            this.ribbonStatusBar1.Ribbon = this.ribbonControl1;
            this.ribbonStatusBar1.Size = new System.Drawing.Size(1103, 28);
            // 
            // groupControl1
            // 
            this.groupControl1.Controls.Add(this.txtSatinAlinilanKurum);
            this.groupControl1.Controls.Add(this.label6);
            this.groupControl1.Controls.Add(this.txtToptanFiyat);
            this.groupControl1.Controls.Add(this.label2);
            this.groupControl1.Controls.Add(this.calendarControl1);
            this.groupControl1.Controls.Add(this.txt_urunAdet);
            this.groupControl1.Controls.Add(this.txt_UrunBirimFiyat);
            this.groupControl1.Controls.Add(this.txt_UrunAdi);
            this.groupControl1.Controls.Add(this.btn_UrunEkle);
            this.groupControl1.Controls.Add(this.label5);
            this.groupControl1.Controls.Add(this.label4);
            this.groupControl1.Controls.Add(this.label3);
            this.groupControl1.Controls.Add(this.label1);
            this.groupControl1.Location = new System.Drawing.Point(195, 185);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(599, 577);
            this.groupControl1.TabIndex = 7;
            this.groupControl1.Text = "Stok Ürün Ekle";
            // 
            // txtSatinAlinilanKurum
            // 
            this.txtSatinAlinilanKurum.Location = new System.Drawing.Point(189, 215);
            this.txtSatinAlinilanKurum.Name = "txtSatinAlinilanKurum";
            this.txtSatinAlinilanKurum.Size = new System.Drawing.Size(280, 23);
            this.txtSatinAlinilanKurum.TabIndex = 22;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(57, 215);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(126, 17);
            this.label6.TabIndex = 21;
            this.label6.Text = "Satin Alinilan Kurum";
            // 
            // txtToptanFiyat
            // 
            this.txtToptanFiyat.Location = new System.Drawing.Point(189, 82);
            this.txtToptanFiyat.Name = "txtToptanFiyat";
            this.txtToptanFiyat.Size = new System.Drawing.Size(280, 23);
            this.txtToptanFiyat.TabIndex = 20;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(64, 82);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(119, 17);
            this.label2.TabIndex = 19;
            this.label2.Text = "Ürün Toptan Fiyat";
            // 
            // calendarControl1
            // 
            this.calendarControl1.CalendarTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.calendarControl1.Location = new System.Drawing.Point(201, 254);
            this.calendarControl1.Name = "calendarControl1";
            this.calendarControl1.Size = new System.Drawing.Size(260, 261);
            this.calendarControl1.TabIndex = 18;
            // 
            // txt_urunAdet
            // 
            this.txt_urunAdet.Location = new System.Drawing.Point(189, 166);
            this.txt_urunAdet.Name = "txt_urunAdet";
            this.txt_urunAdet.Size = new System.Drawing.Size(280, 23);
            this.txt_urunAdet.TabIndex = 9;
            this.txt_urunAdet.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.JustNumber_KeyPress);
            // 
            // txt_UrunBirimFiyat
            // 
            this.txt_UrunBirimFiyat.Location = new System.Drawing.Point(189, 122);
            this.txt_UrunBirimFiyat.Name = "txt_UrunBirimFiyat";
            this.txt_UrunBirimFiyat.Size = new System.Drawing.Size(280, 23);
            this.txt_UrunBirimFiyat.TabIndex = 9;
            // 
            // txt_UrunAdi
            // 
            this.txt_UrunAdi.Location = new System.Drawing.Point(189, 40);
            this.txt_UrunAdi.Name = "txt_UrunAdi";
            this.txt_UrunAdi.Size = new System.Drawing.Size(280, 23);
            this.txt_UrunAdi.TabIndex = 9;
            // 
            // btn_UrunEkle
            // 
            this.btn_UrunEkle.Location = new System.Drawing.Point(271, 532);
            this.btn_UrunEkle.Name = "btn_UrunEkle";
            this.btn_UrunEkle.Size = new System.Drawing.Size(102, 38);
            this.btn_UrunEkle.TabIndex = 16;
            this.btn_UrunEkle.Text = "Ürün Ekle";
            this.btn_UrunEkle.Click += new System.EventHandler(this.btn_UrunEkle_Click);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(78, 380);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(117, 17);
            this.label5.TabIndex = 6;
            this.label5.Text = "Satın Alınma Tarihi";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(69, 172);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(114, 17);
            this.label4.TabIndex = 7;
            this.label4.Text = "Alınan Ürün Adedi";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(77, 122);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(106, 17);
            this.label3.TabIndex = 8;
            this.label3.Text = "Ürün Birim Fiyatı";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(89, 40);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(60, 17);
            this.label1.TabIndex = 10;
            this.label1.Text = "Ürün Adı";
            // 
            // UrunEkleForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1103, 807);
            this.Controls.Add(this.groupControl1);
            this.Controls.Add(this.ribbonStatusBar1);
            this.Controls.Add(this.ribbonControl1);
            this.Name = "UrunEkleForm";
            this.Ribbon = this.ribbonControl1;
            this.StatusBar = this.ribbonStatusBar1;
            this.Text = "UrunEkleForm";
            this.Load += new System.EventHandler(this.btn_UrunEkle_Click);
            this.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.JustNumber_KeyPress);
            ((System.ComponentModel.ISupportInitialize)(this.ribbonControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            this.groupControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.calendarControl1.CalendarTimeProperties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraBars.Ribbon.RibbonControl ribbonControl1;
        private DevExpress.XtraBars.Ribbon.RibbonPage ribbonPage1;
        private DevExpress.XtraBars.Ribbon.RibbonStatusBar ribbonStatusBar1;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        private DevExpress.XtraEditors.Controls.CalendarControl calendarControl1;
        private System.Windows.Forms.TextBox txt_urunAdet;
        private System.Windows.Forms.TextBox txt_UrunBirimFiyat;
        private System.Windows.Forms.TextBox txt_UrunAdi;
        private DevExpress.XtraEditors.SimpleButton btn_UrunEkle;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtSatinAlinilanKurum;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtToptanFiyat;
    }
}