.class public Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;
.super Landroid/bluetooth/AlertActivity;
.source "BluetoothOppBtEnableActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothOppBtEnableActivity"


# instance fields
.field private mOppManager:Lcom/android/bluetooth/opp/BluetoothOppManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroid/bluetooth/AlertActivity;-><init>()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 4

    .line 72
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 73
    const v1, 0x7f070044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    const v3, 0x7f0e0023

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f0e0024

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 83
    const/4 p1, -0x2

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->mOppManager:Lcom/android/bluetooth/opp/BluetoothOppManager;

    invoke-virtual {p1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->enableBluetooth()V

    .line 86
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->mOppManager:Lcom/android/bluetooth/opp/BluetoothOppManager;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/bluetooth/opp/BluetoothOppManager;->mSendingFlag:Z

    .line 88
    const p1, 0x7f0e0047

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 91
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->startActivity(Landroid/content/Intent;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->finish()V

    .line 96
    goto :goto_0

    .line 99
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->mOppManager:Lcom/android/bluetooth/opp/BluetoothOppManager;

    invoke-virtual {p1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->cleanUpSendingFileInfo()V

    .line 100
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->finish()V

    .line 103
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 112
    invoke-super {p0, p1}, Landroid/bluetooth/AlertActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 113
    const-string p1, "BluetoothOppBtEnableActivity"

    const-string v0, "onConfigurationChanged ++"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Landroid/bluetooth/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-static {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->mOppManager:Lcom/android/bluetooth/opp/BluetoothOppManager;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/bluetooth/opp/BluetoothOppManager;->mSendingFlag:Z

    .line 63
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->mAlertBuilder:Landroid/app/AlertDialog$Builder;

    const v0, 0x1010355

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 64
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->mAlertBuilder:Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0e0026

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 65
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->mAlertBuilder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->createView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 66
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->mAlertBuilder:Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0e0025

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 67
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->mAlertBuilder:Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0e0022

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 68
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->setupAlert()V

    .line 69
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 107
    invoke-super {p0}, Landroid/bluetooth/AlertActivity;->onDestroy()V

    .line 108
    return-void
.end method
