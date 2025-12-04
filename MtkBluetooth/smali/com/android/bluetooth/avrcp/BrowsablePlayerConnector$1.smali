.class Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector$1;
.super Landroid/os/Handler;
.source "BrowsablePlayerConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector$PlayerListCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;Landroid/os/Looper;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector$1;->this$0:Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 119
    invoke-static {}, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->access$000()Z

    move-result v0

    const-string v1, "AvrcpBrowsablePlayerConnector"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received a message: msg.what="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    goto/16 :goto_0

    .line 169
    :cond_1
    const-string p1, "Timed out waiting for players"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector$1;->this$0:Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->access$300(Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;)V

    goto/16 :goto_0

    .line 135
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    .line 137
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_3

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not browsable"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector$1;->this$0:Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->access$100(Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 140
    return-void

    .line 144
    :cond_3
    invoke-static {}, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->access$000()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checking root contents for "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_4
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->getRootId()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lcom/android/bluetooth/avrcp/-$$Lambda$BrowsablePlayerConnector$1$i5E7glYRZ-XLqbD778dPZvR6B8I;

    invoke-direct {v3, p0, v0}, Lcom/android/bluetooth/avrcp/-$$Lambda$BrowsablePlayerConnector$1$i5E7glYRZ-XLqbD778dPZvR6B8I;-><init>(Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector$1;Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;)V

    invoke-virtual {v0, p1, v3}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->getFolderItems(Ljava/lang/String;Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowseCallback;)Z

    .line 166
    goto :goto_0

    .line 122
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    .line 125
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector$1;->this$0:Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->access$100(Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 126
    return-void

    .line 129
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully added package to results: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector$1;->this$0:Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->access$200(Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    nop

    .line 174
    :goto_0
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector$1;->this$0:Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->access$100(Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_7

    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Successfully connected to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector$1;->this$0:Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;

    .line 176
    invoke-static {v0}, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->access$200(Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " browsable players."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 175
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector$1;->removeMessages(I)V

    .line 178
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector$1;->this$0:Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->access$400(Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;)Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector$PlayerListCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector$1;->this$0:Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->access$200(Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector$PlayerListCallback;->run(Ljava/util/List;)V

    .line 180
    :cond_7
    return-void
.end method

.method public synthetic lambda$handleMessage$0$BrowsablePlayerConnector$1(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;ILjava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 149
    if-eqz p2, :cond_0

    .line 150
    iget-object p2, p0, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector$1;->this$0:Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;

    invoke-static {p2}, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->access$100(Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 151
    return-void

    .line 154
    :cond_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_1

    .line 155
    iget-object p2, p0, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector$1;->this$0:Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;

    invoke-static {p2}, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->access$100(Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 156
    return-void

    .line 161
    :cond_1
    iget-object p2, p0, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector$1;->this$0:Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;

    .line 162
    invoke-static {p2}, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->access$500(Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;)Landroid/os/Handler;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 163
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 164
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector$1;->this$0:Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->access$500(Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 165
    return-void
.end method
