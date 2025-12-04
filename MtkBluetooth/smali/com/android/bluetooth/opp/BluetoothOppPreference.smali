.class public Lcom/android/bluetooth/opp/BluetoothOppPreference;
.super Ljava/lang/Object;
.source "BluetoothOppPreference.java"


# static fields
.field private static final INSTANCE_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "BluetoothOppPreference"

.field private static final V:Z

.field private static sInstance:Lcom/android/bluetooth/opp/BluetoothOppPreference;


# instance fields
.field private mChannelPreference:Landroid/content/SharedPreferences;

.field private mChannels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInitialized:Z

.field private mNamePreference:Landroid/content/SharedPreferences;

.field private mNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    sget-boolean v0, Lcom/android/bluetooth/opp/Constants;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->V:Z

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mChannels:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mNames:Ljava/util/HashMap;

    return-void
.end method

.method private getChannelKey(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;
    .locals 1

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppPreference;
    .locals 2

    .line 69
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothOppPreference;->sInstance:Lcom/android/bluetooth/opp/BluetoothOppPreference;

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppPreference;

    invoke-direct {v1}, Lcom/android/bluetooth/opp/BluetoothOppPreference;-><init>()V

    sput-object v1, Lcom/android/bluetooth/opp/BluetoothOppPreference;->sInstance:Lcom/android/bluetooth/opp/BluetoothOppPreference;

    .line 73
    :cond_0
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothOppPreference;->sInstance:Lcom/android/bluetooth/opp/BluetoothOppPreference;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->init(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 74
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    .line 76
    :cond_1
    sget-object p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->sInstance:Lcom/android/bluetooth/opp/BluetoothOppPreference;

    monitor-exit v0

    return-object p0

    .line 77
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private init(Landroid/content/Context;)Z
    .locals 3

    .line 81
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mInitialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 82
    return v1

    .line 84
    :cond_0
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mInitialized:Z

    .line 86
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mContext:Landroid/content/Context;

    .line 88
    const-string v0, "btopp_names"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mNamePreference:Landroid/content/SharedPreferences;

    .line 90
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mContext:Landroid/content/Context;

    .line 91
    const-string v0, "btopp_channels"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mChannelPreference:Landroid/content/SharedPreferences;

    .line 94
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mNamePreference:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mNames:Ljava/util/HashMap;

    .line 95
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mChannelPreference:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mChannels:Ljava/util/HashMap;

    .line 97
    return v1
.end method


# virtual methods
.method public dump()V
    .locals 2

    .line 169
    const-string v0, "BluetoothOppPreference"

    const-string v1, "Dumping Names:  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mNames:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v1, "Dumping Channels:  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mChannels:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void
.end method

.method public getChannel(Landroid/bluetooth/BluetoothDevice;I)I
    .locals 4

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getChannelKey(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    move-result-object v0

    .line 119
    sget-boolean v1, Lcom/android/bluetooth/opp/BluetoothOppPreference;->V:Z

    const-string v2, "BluetoothOppPreference"

    if-eqz v1, :cond_0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getChannel "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    const/4 v1, 0x0

    .line 123
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mChannels:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 124
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    .line 125
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->V:Z

    if-eqz v0, :cond_1

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getChannel for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 2

    .line 105
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FF:FF:FF:00:00:00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const-string p1, "localhost"

    return-object p1

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mNames:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mNames:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 110
    if-eqz p1, :cond_1

    .line 111
    return-object p1

    .line 114
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public removeChannel(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .line 161
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getChannelKey(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    move-result-object p1

    .line 162
    iget-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mChannelPreference:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 163
    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 164
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 165
    iget-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mChannels:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    return-void
.end method

.method public setChannel(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 2

    .line 147
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->V:Z

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setchannel for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothOppPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getChannel(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    if-eq p3, v0, :cond_1

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getChannelKey(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    move-result-object p1

    .line 153
    iget-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mChannelPreference:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 154
    invoke-interface {p2, p1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 155
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 156
    iget-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mChannels:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_1
    return-void
.end method

.method public setName(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 2

    .line 135
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->V:Z

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setname for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothOppPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mNamePreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 140
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 142
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mNames:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_1
    return-void
.end method
