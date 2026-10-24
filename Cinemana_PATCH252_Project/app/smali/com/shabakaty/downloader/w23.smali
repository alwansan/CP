.class public final enum Lcom/shabakaty/downloader/w23;
.super Ljava/lang/Enum;
.source "OSInfluenceChannel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/w23;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum s:Lcom/shabakaty/downloader/w23;

.field public static final enum t:Lcom/shabakaty/downloader/w23;

.field public static final synthetic u:[Lcom/shabakaty/downloader/w23;


# instance fields
.field public final r:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/shabakaty/downloader/w23;

    new-instance v1, Lcom/shabakaty/downloader/w23;

    const-string v2, "IAM"

    const/4 v3, 0x0

    const-string v4, "iam"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/shabakaty/downloader/w23;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/shabakaty/downloader/w23;->s:Lcom/shabakaty/downloader/w23;

    aput-object v1, v0, v3

    new-instance v1, Lcom/shabakaty/downloader/w23;

    const-string v2, "NOTIFICATION"

    const/4 v3, 0x1

    const-string v4, "notification"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/shabakaty/downloader/w23;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/shabakaty/downloader/w23;->t:Lcom/shabakaty/downloader/w23;

    aput-object v1, v0, v3

    sput-object v0, Lcom/shabakaty/downloader/w23;->u:[Lcom/shabakaty/downloader/w23;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/shabakaty/downloader/w23;->r:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/w23;
    .locals 1

    const-class v0, Lcom/shabakaty/downloader/w23;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/w23;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/w23;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/w23;->u:[Lcom/shabakaty/downloader/w23;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/w23;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/w23;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w23;->r:Ljava/lang/String;

    return-object v0
.end method
