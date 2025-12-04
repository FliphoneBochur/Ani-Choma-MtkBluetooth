.class public Lcom/android/bluetooth/BluetoothPrefs;
.super Landroid/app/Activity;
.source "BluetoothPrefs.java"


# static fields
.field public static final BLUETOOTH_SETTING_ACTION:Ljava/lang/String; = "android.settings.BLUETOOTH_SETTINGS"

.field public static final BLUETOOTH_SETTING_CATEGORY:Ljava/lang/String; = "android.intent.category.DEFAULT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 35
    const-string v0, "android.settings.BLUETOOTH_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/BluetoothPrefs;->startActivity(Landroid/content/Intent;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothPrefs;->finish()V

    .line 39
    return-void
.end method
