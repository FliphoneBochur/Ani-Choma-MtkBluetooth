.class public final synthetic Lcom/android/bluetooth/a2dpsink/-$$Lambda$A2dpSinkStreamHandler$PPcVodXV7oIPabVMroFxjVNhk2o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic f$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/-$$Lambda$A2dpSinkStreamHandler$PPcVodXV7oIPabVMroFxjVNhk2o;->f$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/-$$Lambda$A2dpSinkStreamHandler$PPcVodXV7oIPabVMroFxjVNhk2o;->f$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->lambda$requestMediaKeyFocus$0$A2dpSinkStreamHandler(Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1
.end method
