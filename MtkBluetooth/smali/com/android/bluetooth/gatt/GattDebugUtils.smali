.class Lcom/android/bluetooth/gatt/GattDebugUtils;
.super Ljava/lang/Object;
.source "GattDebugUtils.java"


# static fields
.field private static final ACTION_GATT_PAIRING_CONFIG:Ljava/lang/String; = "android.bluetooth.action.GATT_PAIRING_CONFIG"

.field private static final ACTION_GATT_TEST_CONNECT:Ljava/lang/String; = "android.bluetooth.action.GATT_TEST_CONNECT"

.field private static final ACTION_GATT_TEST_DISCONNECT:Ljava/lang/String; = "android.bluetooth.action.GATT_TEST_DISCONNECT"

.field private static final ACTION_GATT_TEST_DISCOVER:Ljava/lang/String; = "android.bluetooth.action.GATT_TEST_DISCOVER"

.field private static final ACTION_GATT_TEST_ENABLE:Ljava/lang/String; = "android.bluetooth.action.GATT_TEST_ENABLE"

.field private static final ACTION_GATT_TEST_USAGE:Ljava/lang/String; = "android.bluetooth.action.GATT_TEST_USAGE"

.field private static final DEBUG_ADMIN:Z = true

.field private static final EXTRA_ADDRESS:Ljava/lang/String; = "address"

.field private static final EXTRA_ADDR_TYPE:Ljava/lang/String; = "addr_type"

.field private static final EXTRA_AUTH_REQ:Ljava/lang/String; = "auth_req"

.field private static final EXTRA_EHANDLE:Ljava/lang/String; = "end"

.field private static final EXTRA_ENABLE:Ljava/lang/String; = "enable"

.field private static final EXTRA_INIT_KEY:Ljava/lang/String; = "init_key"

.field private static final EXTRA_IO_CAP:Ljava/lang/String; = "io_cap"

.field private static final EXTRA_MAX_KEY:Ljava/lang/String; = "max_key"

.field private static final EXTRA_RESP_KEY:Ljava/lang/String; = "resp_key"

.field private static final EXTRA_SHANDLE:Ljava/lang/String; = "start"

.field private static final EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final EXTRA_UUID:Ljava/lang/String; = "uuid"

.field private static final TAG:Ljava/lang/String; = "BtGatt.DebugUtils"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getHandleExtra(Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 3

    .line 127
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 129
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.String"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x10

    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 132
    :catch_0
    move-exception p0

    .line 133
    return p2

    .line 137
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getUuidExtra(Landroid/content/Intent;)Ljava/util/UUID;
    .locals 2

    .line 147
    const-string v0, "uuid"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 148
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 149
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "0000%s-0000-1000-8000-00805f9b34fb"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 151
    :cond_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static handleDebugAction(Lcom/android/bluetooth/gatt/GattService;Landroid/content/Intent;)Z
    .locals 14

    .line 76
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDebugAction() action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BtGatt.DebugUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v1, "android.bluetooth.action.GATT_TEST_USAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 84
    invoke-static {}, Lcom/android/bluetooth/gatt/GattDebugUtils;->logUsageInfo()V

    goto/16 :goto_0

    .line 86
    :cond_0
    const-string v1, "android.bluetooth.action.GATT_TEST_ENABLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    const-string v0, "enable"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 88
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v11}, Lcom/android/bluetooth/gatt/GattService;->gattTestCommand(ILjava/util/UUID;Ljava/lang/String;IIIII)V

    .line 90
    goto/16 :goto_0

    :cond_1
    const-string v1, "android.bluetooth.action.GATT_TEST_CONNECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    const-string v4, "type"

    if-eqz v1, :cond_2

    .line 91
    const-string v0, "address"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 92
    const/4 v0, 0x2

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 93
    const-string v0, "addr_type"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 94
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v13}, Lcom/android/bluetooth/gatt/GattService;->gattTestCommand(ILjava/util/UUID;Ljava/lang/String;IIIII)V

    .line 96
    goto/16 :goto_0

    :cond_2
    const-string v1, "android.bluetooth.action.GATT_TEST_DISCONNECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v13}, Lcom/android/bluetooth/gatt/GattService;->gattTestCommand(ILjava/util/UUID;Ljava/lang/String;IIIII)V

    goto :goto_0

    .line 99
    :cond_3
    const-string v1, "android.bluetooth.action.GATT_TEST_DISCOVER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 100
    invoke-static {p1}, Lcom/android/bluetooth/gatt/GattDebugUtils;->getUuidExtra(Landroid/content/Intent;)Ljava/util/UUID;

    move-result-object v7

    .line 101
    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 102
    const-string v0, "start"

    invoke-static {p1, v0, v2}, Lcom/android/bluetooth/gatt/GattDebugUtils;->getHandleExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v10

    .line 103
    const v0, 0xffff

    const-string v1, "end"

    invoke-static {p1, v1, v0}, Lcom/android/bluetooth/gatt/GattDebugUtils;->getHandleExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v11

    .line 104
    const/4 v6, 0x4

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v13}, Lcom/android/bluetooth/gatt/GattService;->gattTestCommand(ILjava/util/UUID;Ljava/lang/String;IIIII)V

    .line 106
    goto :goto_0

    :cond_4
    const-string v1, "android.bluetooth.action.GATT_PAIRING_CONFIG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 107
    const/4 v0, 0x5

    const-string v1, "auth_req"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 108
    const/4 v0, 0x4

    const-string v1, "io_cap"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 109
    const-string v0, "init_key"

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 110
    const-string v0, "resp_key"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 111
    const/16 v0, 0x10

    const-string v1, "max_key"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 112
    const/16 v4, 0xf0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v11}, Lcom/android/bluetooth/gatt/GattService;->gattTestCommand(ILjava/util/UUID;Ljava/lang/String;IIIII)V

    .line 114
    nop

    .line 118
    :goto_0
    return v2

    .line 115
    :cond_5
    return v3
.end method

.method private static logUsageInfo()V
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    const-string v1, "------------ GATT TEST ACTIONS  ----------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string v1, "\nGATT_TEST_ENABLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v1, "\n  [--ez enable <bool>] Enable or disable,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string v1, "\n                       defaults to true (enable).\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v1, "\nGATT_TEST_CONNECT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string v1, "\n   --es address <bda>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string v1, "\n  [--ei addr_type <type>] Possible values:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v1, "\n                         0 = Static (default)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v1, "\n                         1 = Random\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string v1, "\n  [--ei type <type>]   Default is 2 (LE Only)\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v1, "\nGATT_TEST_DISCONNECT\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string v1, "\nGATT_TEST_DISCOVER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v1, "\n  [--ei type <type>]   Possible values:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v1, "\n                         1 = Discover all services (default)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string v1, "\n                         2 = Discover services by UUID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v1, "\n                         3 = Discover included services"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v1, "\n                         4 = Discover characteristics"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v1, "\n                         5 = Discover descriptors\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string v1, "\n  [--es uuid <uuid>]   Optional; Can be either full 128-bit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v1, "\n                       UUID hex string, or 4 hex characters"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v1, "\n                       for 16-bit UUIDs.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, "\n  [--ei start <hdl>]   Start of handle range (default 1)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v1, "\n  [--ei end <hdl>]     End of handle range (default 65355)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, "\n    or"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, "\n  [--es start <hdl>]   Start of handle range (hex format)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string v1, "\n  [--es end <hdl>]     End of handle range (hex format)\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v1, "\nGATT_PAIRING_CONFIG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, "\n  [--ei auth_req]      Authentication flag (default 5)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const-string v1, "\n  [--ei io_cap]        IO capabilities (default 4)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string v1, "\n  [--ei init_key]      Initial key size (default 7)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string v1, "\n  [--ei resp_key]      Response key size (default 7)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v1, "\n  [--ei max_key]       Maximum key size (default 16)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string v1, "\n------------------------------------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.DebugUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void
.end method
