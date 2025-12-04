.class public final synthetic Lcom/android/bluetooth/avrcp/-$$Lambda$AvrcpNativeInterface$yqsIIES5LBrM35GDVi_3FCOWPYA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/bluetooth/avrcp/MediaPlayerList$GetFolderItemsCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;


# direct methods
.method public synthetic constructor <init>(Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/-$$Lambda$AvrcpNativeInterface$yqsIIES5LBrM35GDVi_3FCOWPYA;->f$0:Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/-$$Lambda$AvrcpNativeInterface$yqsIIES5LBrM35GDVi_3FCOWPYA;->f$0:Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->lambda$getFolderItemsRequest$1$AvrcpNativeInterface(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
