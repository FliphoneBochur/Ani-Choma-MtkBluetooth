.class Lcom/android/bluetooth/gatt/ContextMap$Connection;
.super Ljava/lang/Object;
.source "ContextMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/ContextMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Connection"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public appId:I

.field public connId:I

.field public startTime:J

.field final synthetic this$0:Lcom/android/bluetooth/gatt/ContextMap;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/ContextMap;ILjava/lang/String;I)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->this$0:Lcom/android/bluetooth/gatt/ContextMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p2, p0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->connId:I

    .line 56
    iput-object p3, p0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->address:Ljava/lang/String;

    .line 57
    iput p4, p0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->appId:I

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->startTime:J

    .line 59
    return-void
.end method
