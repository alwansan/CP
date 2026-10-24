.class public Lcom/shabakaty/downloader/z11;
.super Ljava/lang/Object;
.source "Easing.java"


# static fields
.field public static b:Lcom/shabakaty/downloader/z11;

.field public static c:[Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/z11;

    invoke-direct {v0}, Lcom/shabakaty/downloader/z11;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/z11;->b:Lcom/shabakaty/downloader/z11;

    const-string v0, "standard"

    const-string v1, "accelerate"

    const-string v2, "decelerate"

    const-string v3, "linear"

    .line 2
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/z11;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "identity"

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/z11;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/z11;->a:Ljava/lang/String;

    return-object v0
.end method
