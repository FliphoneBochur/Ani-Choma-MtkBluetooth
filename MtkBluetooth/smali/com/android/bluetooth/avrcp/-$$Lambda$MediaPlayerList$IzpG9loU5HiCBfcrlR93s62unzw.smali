.class public final synthetic Lcom/android/bluetooth/avrcp/-$$Lambda$MediaPlayerList$IzpG9loU5HiCBfcrlR93s62unzw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowseCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/bluetooth/avrcp/MediaPlayerList$GetPlayerRootCallback;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/bluetooth/avrcp/MediaPlayerList$GetPlayerRootCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/-$$Lambda$MediaPlayerList$IzpG9loU5HiCBfcrlR93s62unzw;->f$0:Lcom/android/bluetooth/avrcp/MediaPlayerList$GetPlayerRootCallback;

    iput p2, p0, Lcom/android/bluetooth/avrcp/-$$Lambda$MediaPlayerList$IzpG9loU5HiCBfcrlR93s62unzw;->f$1:I

    return-void
.end method


# virtual methods
.method public final run(ILjava/lang/String;Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/-$$Lambda$MediaPlayerList$IzpG9loU5HiCBfcrlR93s62unzw;->f$0:Lcom/android/bluetooth/avrcp/MediaPlayerList$GetPlayerRootCallback;

    iget v1, p0, Lcom/android/bluetooth/avrcp/-$$Lambda$MediaPlayerList$IzpG9loU5HiCBfcrlR93s62unzw;->f$1:I

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->lambda$getPlayerRoot$2(Lcom/android/bluetooth/avrcp/MediaPlayerList$GetPlayerRootCallback;IILjava/lang/String;Ljava/util/List;)V

    return-void
.end method
