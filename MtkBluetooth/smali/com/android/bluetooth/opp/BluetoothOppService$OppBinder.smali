.class Lcom/android/bluetooth/opp/BluetoothOppService$OppBinder;
.super Landroid/os/Binder;
.source "BluetoothOppService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OppBinder"
.end annotation


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppService;)V
    .locals 0

    .line 188
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 189
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .line 193
    return-void
.end method
