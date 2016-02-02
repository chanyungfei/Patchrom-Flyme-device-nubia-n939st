.class public final Landroid/app/ConnectionSettings;
.super Ljava/lang/Object;
.source "ConnectionSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final ACTION_MODIFY_NETWORK_MODE:Ljava/lang/String; = "com.android.internal.telephony.MODIFY_NETWORK_MODE"

.field private static final CM_MODE_2G:I = 0x0

.field private static final CM_MODE_2G3G:I = 0x3

.field private static final CM_MODE_3G:I = 0x1

.field private static final CM_MODE_4G:I = 0x2

.field private static final CM_MODE_ALL:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ConnectionSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXTRA_NETWORK_MODE:Ljava/lang/String; = "networkMode"

.field public static final PROFILE_CONNECTION_2G3G4G:I = 0x9

.field public static final PROFILE_CONNECTION_BLUETOOTH:I = 0x7

.field public static final PROFILE_CONNECTION_GPS:I = 0x4

.field public static final PROFILE_CONNECTION_MOBILEDATA:I = 0x0

.field public static final PROFILE_CONNECTION_NFC:I = 0x8

.field public static final PROFILE_CONNECTION_SYNC:I = 0x5

.field public static final PROFILE_CONNECTION_WIFI:I = 0x1

.field public static final PROFILE_CONNECTION_WIFIAP:I = 0x2

.field public static final PROFILE_CONNECTION_WIMAX:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ConnectivityManager"


# instance fields
.field private mConnectionId:I

.field private mDirty:Z

.field private mOverride:Z

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Landroid/app/ConnectionSettings$1;

    invoke-direct {v0}, Landroid/app/ConnectionSettings$1;-><init>()V

    sput-object v0, Landroid/app/ConnectionSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "connectionId"    # I

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, v0, v0}, Landroid/app/ConnectionSettings;-><init>(IIZ)V

    .line 87
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1
    .param p1, "connectionId"    # I
    .param p2, "value"    # I
    .param p3, "override"    # Z

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput p1, p0, Landroid/app/ConnectionSettings;->mConnectionId:I

    .line 91
    iput p2, p0, Landroid/app/ConnectionSettings;->mValue:I

    .line 92
    iput-boolean p3, p0, Landroid/app/ConnectionSettings;->mOverride:Z

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ConnectionSettings;->mDirty:Z

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p0, p1}, Landroid/app/ConnectionSettings;->readFromParcel(Landroid/os/Parcel;)V

    .line 83
    return-void
.end method

.method public static fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/ConnectionSettings;
    .locals 5
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 257
    .local v1, "event":I
    new-instance v0, Landroid/app/ConnectionSettings;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Landroid/app/ConnectionSettings;-><init>(I)V

    .line 258
    .local v0, "connectionDescriptor":Landroid/app/ConnectionSettings;
    :goto_0
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "connectionDescriptor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 259
    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 260
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "name":Ljava/lang/String;
    const-string v3, "connectionId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 262
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Landroid/app/ConnectionSettings;->mConnectionId:I

    .line 269
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 263
    .restart local v2    # "name":Ljava/lang/String;
    :cond_2
    const-string v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 264
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Landroid/app/ConnectionSettings;->mValue:I

    goto :goto_1

    .line 265
    :cond_3
    const-string v3, "override"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 266
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Landroid/app/ConnectionSettings;->mOverride:Z

    goto :goto_1

    .line 271
    .end local v2    # "name":Ljava/lang/String;
    :cond_4
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public getConnectionId()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Landroid/app/ConnectionSettings;->mConnectionId:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Landroid/app/ConnectionSettings;->mValue:I

    return v0
.end method

.method public getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 1
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 276
    const-string v0, "<connectionDescriptor>\n<connectionId>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    iget v0, p0, Landroid/app/ConnectionSettings;->mConnectionId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    const-string v0, "</connectionId>\n<value>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    iget v0, p0, Landroid/app/ConnectionSettings;->mValue:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 280
    const-string v0, "</value>\n<override>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    iget-boolean v0, p0, Landroid/app/ConnectionSettings;->mOverride:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 282
    const-string v0, "</override>\n</connectionDescriptor>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    return-void
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Landroid/app/ConnectionSettings;->mDirty:Z

    return v0
.end method

.method public isOverride()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/app/ConnectionSettings;->mOverride:Z

    return v0
.end method

.method public processOverride(Landroid/content/Context;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    .line 125
    .local v4, "bta":Landroid/bluetooth/BluetoothAdapter;
    const-string v19, "location"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/location/LocationManager;

    .line 126
    .local v11, "lm":Landroid/location/LocationManager;
    const-string v19, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/wifi/WifiManager;

    .line 127
    .local v18, "wm":Landroid/net/wifi/WifiManager;
    const-string v19, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 128
    .local v6, "cm":Landroid/net/ConnectivityManager;
    const/4 v13, 0x0

    .line 130
    .local v13, "nfcAdapter":Landroid/nfc/NfcAdapter;
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 135
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/ConnectionSettings;->getValue()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    const/4 v8, 0x1

    .line 137
    .local v8, "forcedState":Z
    :goto_1
    const-string v19, "ConnectivityManager"

    const-string v20, " processOverride() -----"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual/range {p0 .. p0}, Landroid/app/ConnectionSettings;->getConnectionId()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    .line 251
    :cond_0
    :goto_2
    :pswitch_0
    return-void

    .line 135
    .end local v8    # "forcedState":Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 140
    .restart local v8    # "forcedState":Z
    :pswitch_1
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v7

    .line 141
    .local v7, "currentState":Z
    const-string v19, "ConnectivityManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " processOverride() forcedState:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " currentState:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    if-eq v8, v7, :cond_0

    .line 145
    invoke-static/range {p1 .. p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v12

    .line 146
    .local v12, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_0

    .line 147
    invoke-virtual {v12, v9}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v14

    .line 149
    .local v14, "simeanble":Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mobile_data"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    if-eqz v8, :cond_2

    const/16 v19, 0x1

    :goto_4
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 151
    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v15

    .line 152
    .local v15, "subId":[I
    const/16 v19, 0x0

    aget v19, v15, v19

    move/from16 v0, v19

    invoke-virtual {v12, v0, v8}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 146
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 149
    .end local v15    # "subId":[I
    :cond_2
    const/16 v19, 0x0

    goto :goto_4

    .line 159
    .end local v7    # "currentState":Z
    .end local v9    # "i":I
    .end local v12    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .end local v14    # "simeanble":Z
    :pswitch_2
    new-instance v10, Landroid/content/Intent;

    const-string v19, "com.android.internal.telephony.MODIFY_NETWORK_MODE"

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v10, "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Landroid/app/ConnectionSettings;->getValue()I

    move-result v19

    packed-switch v19, :pswitch_data_1

    goto/16 :goto_2

    .line 162
    :pswitch_3
    const-string v19, "networkMode"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 165
    :pswitch_4
    const-string v19, "networkMode"

    const/16 v20, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 168
    :pswitch_5
    const-string v19, "networkMode"

    const/16 v20, 0xb

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 171
    :pswitch_6
    const-string v19, "networkMode"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 174
    :pswitch_7
    const-string v19, "networkMode"

    const/16 v20, 0x9

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 182
    .end local v10    # "intent":Landroid/content/Intent;
    :pswitch_8
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v5

    .line 183
    .local v5, "btstate":I
    if-eqz v8, :cond_4

    const/16 v19, 0xa

    move/from16 v0, v19

    if-eq v5, v0, :cond_3

    const/16 v19, 0xd

    move/from16 v0, v19

    if-ne v5, v0, :cond_4

    .line 185
    :cond_3
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto/16 :goto_2

    .line 186
    :cond_4
    if-nez v8, :cond_0

    const/16 v19, 0xc

    move/from16 v0, v19

    if-eq v5, v0, :cond_5

    const/16 v19, 0xb

    move/from16 v0, v19

    if-ne v5, v0, :cond_0

    .line 188
    :cond_5
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto/16 :goto_2

    .line 192
    .end local v5    # "btstate":I
    :pswitch_9
    const-string v19, "gps"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v7

    .line 193
    .restart local v7    # "currentState":Z
    if-eq v7, v8, :cond_0

    .line 194
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "gps"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 199
    .end local v7    # "currentState":Z
    :pswitch_a
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v7

    .line 200
    .restart local v7    # "currentState":Z
    if-eq v8, v7, :cond_0

    .line 201
    invoke-static {v8}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    goto/16 :goto_2

    .line 205
    .end local v7    # "currentState":Z
    :pswitch_b
    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v16

    .line 206
    .local v16, "wifiApState":I
    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    .line 207
    .restart local v7    # "currentState":Z
    if-eq v7, v8, :cond_0

    .line 209
    if-eqz v8, :cond_6

    const/16 v19, 0xc

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    :cond_6
    const/16 v19, 0xd

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 211
    :cond_7
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 213
    :cond_8
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto/16 :goto_2

    .line 217
    .end local v7    # "currentState":Z
    .end local v16    # "wifiApState":I
    :pswitch_c
    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v17

    .line 218
    .local v17, "wifiState":I
    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v7

    .line 219
    .restart local v7    # "currentState":Z
    if-eq v7, v8, :cond_0

    .line 221
    if-eqz v8, :cond_9

    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    :cond_9
    const/16 v19, 0x3

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 223
    :cond_a
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 225
    :cond_b
    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_2

    .line 229
    .end local v7    # "currentState":Z
    .end local v17    # "wifiState":I
    :pswitch_d
    invoke-static/range {p1 .. p1}, Landroid/net/wimax/WimaxHelper;->isWimaxSupported(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 230
    invoke-static/range {p1 .. p1}, Landroid/net/wimax/WimaxHelper;->isWimaxEnabled(Landroid/content/Context;)Z

    move-result v7

    .line 231
    .restart local v7    # "currentState":Z
    if-eq v7, v8, :cond_0

    .line 232
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/net/wimax/WimaxHelper;->setWimaxEnabled(Landroid/content/Context;Z)Z

    goto/16 :goto_2

    .line 237
    .end local v7    # "currentState":Z
    :pswitch_e
    if-eqz v13, :cond_0

    .line 238
    invoke-virtual {v13}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v3

    .line 239
    .local v3, "adapterState":I
    const/16 v19, 0x3

    move/from16 v0, v19

    if-eq v3, v0, :cond_c

    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v3, v0, :cond_d

    :cond_c
    const/4 v7, 0x1

    .line 241
    .restart local v7    # "currentState":Z
    :goto_6
    if-eq v7, v8, :cond_0

    .line 242
    if-eqz v8, :cond_e

    .line 243
    invoke-virtual {v13}, Landroid/nfc/NfcAdapter;->enable()Z

    goto/16 :goto_2

    .line 239
    .end local v7    # "currentState":Z
    :cond_d
    const/4 v7, 0x0

    goto :goto_6

    .line 244
    .restart local v7    # "currentState":Z
    :cond_e
    if-nez v8, :cond_0

    const/16 v19, 0x4

    move/from16 v0, v19

    if-eq v3, v0, :cond_0

    .line 245
    invoke-virtual {v13}, Landroid/nfc/NfcAdapter;->disable()Z

    goto/16 :goto_2

    .line 131
    .end local v3    # "adapterState":I
    .end local v7    # "currentState":Z
    .end local v8    # "forcedState":Z
    :catch_0
    move-exception v19

    goto/16 :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_8
        :pswitch_e
        :pswitch_2
    .end packed-switch

    .line 160
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ConnectionSettings;->mConnectionId:I

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/app/ConnectionSettings;->mOverride:Z

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ConnectionSettings;->mValue:I

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/app/ConnectionSettings;->mDirty:Z

    .line 305
    return-void

    :cond_0
    move v0, v2

    .line 302
    goto :goto_0

    :cond_1
    move v1, v2

    .line 304
    goto :goto_1
.end method

.method public setOverride(Z)V
    .locals 1
    .param p1, "override"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Landroid/app/ConnectionSettings;->mOverride:Z

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ConnectionSettings;->mDirty:Z

    .line 112
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 105
    iput p1, p0, Landroid/app/ConnectionSettings;->mValue:I

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ConnectionSettings;->mDirty:Z

    .line 107
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 293
    iget v0, p0, Landroid/app/ConnectionSettings;->mConnectionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget-boolean v0, p0, Landroid/app/ConnectionSettings;->mOverride:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget v0, p0, Landroid/app/ConnectionSettings;->mValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    iget-boolean v0, p0, Landroid/app/ConnectionSettings;->mDirty:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    return-void

    :cond_0
    move v0, v2

    .line 294
    goto :goto_0

    :cond_1
    move v1, v2

    .line 296
    goto :goto_1
.end method
