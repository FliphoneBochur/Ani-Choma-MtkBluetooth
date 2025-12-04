.class public Lcom/android/bluetooth/pan/PanService$ConnectState;
.super Ljava/lang/Object;
.source "PanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pan/PanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ConnectState"
.end annotation


# instance fields
.field public addr:[B

.field public error:I

.field public local_role:I

.field public remote_role:I

.field public state:I


# direct methods
.method public constructor <init>([BIIII)V
    .locals 0

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    iput-object p1, p0, Lcom/android/bluetooth/pan/PanService$ConnectState;->addr:[B

    .line 502
    iput p2, p0, Lcom/android/bluetooth/pan/PanService$ConnectState;->state:I

    .line 503
    iput p3, p0, Lcom/android/bluetooth/pan/PanService$ConnectState;->error:I

    .line 504
    iput p4, p0, Lcom/android/bluetooth/pan/PanService$ConnectState;->local_role:I

    .line 505
    iput p5, p0, Lcom/android/bluetooth/pan/PanService$ConnectState;->remote_role:I

    .line 506
    return-void
.end method
