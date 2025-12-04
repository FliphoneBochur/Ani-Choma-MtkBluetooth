.class Lcom/android/bluetooth/hid/HidDeviceService$1;
.super Ljava/lang/Object;
.source "HidDeviceService.java"

# interfaces
.implements Landroid/app/ActivityManager$OnUidImportanceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hid/HidDeviceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hid/HidDeviceService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hid/HidDeviceService;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/android/bluetooth/hid/HidDeviceService$1;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidImportance(II)V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceService$1;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-static {v0}, Lcom/android/bluetooth/hid/HidDeviceService;->access$800(Lcom/android/bluetooth/hid/HidDeviceService;)Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 270
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 271
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 272
    iget-object p1, p0, Lcom/android/bluetooth/hid/HidDeviceService$1;->this$0:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-static {p1}, Lcom/android/bluetooth/hid/HidDeviceService;->access$800(Lcom/android/bluetooth/hid/HidDeviceService;)Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 273
    return-void
.end method
