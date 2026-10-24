.class public Lcom/connectsdk/discovery/provider/ssdp/StateVariable;
.super Ljava/lang/Object;
.source "StateVariable.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "stateVariable"

.field public static final TAG_DATA_TYPE:Ljava/lang/String; = "dataType"

.field public static final TAG_NAME:Ljava/lang/String; = "name"


# instance fields
.field public mDataType:Ljava/lang/String;

.field public mMulticast:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mSendEvents:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "yes"

    .line 2
    iput-object v0, p0, Lcom/connectsdk/discovery/provider/ssdp/StateVariable;->mSendEvents:Ljava/lang/String;

    const-string v0, "no"

    .line 3
    iput-object v0, p0, Lcom/connectsdk/discovery/provider/ssdp/StateVariable;->mMulticast:Ljava/lang/String;

    return-void
.end method
