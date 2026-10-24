.class public final enum Lcom/shabakaty/downloader/tr3;
.super Ljava/lang/Enum;
.source "ReportLevel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/tr3;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum s:Lcom/shabakaty/downloader/tr3;

.field public static final enum t:Lcom/shabakaty/downloader/tr3;

.field public static final enum u:Lcom/shabakaty/downloader/tr3;

.field public static final synthetic v:[Lcom/shabakaty/downloader/tr3;


# instance fields
.field public final r:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/tr3;

    const-string v1, "IGNORE"

    const/4 v2, 0x0

    const-string v3, "ignore"

    invoke-direct {v0, v1, v2, v3}, Lcom/shabakaty/downloader/tr3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/tr3;->s:Lcom/shabakaty/downloader/tr3;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/tr3;

    const-string v3, "WARN"

    const/4 v4, 0x1

    const-string v5, "warn"

    invoke-direct {v1, v3, v4, v5}, Lcom/shabakaty/downloader/tr3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/shabakaty/downloader/tr3;->t:Lcom/shabakaty/downloader/tr3;

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/tr3;

    const-string v5, "STRICT"

    const/4 v6, 0x2

    const-string v7, "strict"

    invoke-direct {v3, v5, v6, v7}, Lcom/shabakaty/downloader/tr3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/shabakaty/downloader/tr3;->u:Lcom/shabakaty/downloader/tr3;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/shabakaty/downloader/tr3;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/shabakaty/downloader/tr3;->v:[Lcom/shabakaty/downloader/tr3;

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

    iput-object p3, p0, Lcom/shabakaty/downloader/tr3;->r:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/tr3;
    .locals 1

    const-class v0, Lcom/shabakaty/downloader/tr3;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/tr3;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/tr3;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/tr3;->v:[Lcom/shabakaty/downloader/tr3;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/tr3;

    return-object v0
.end method


# virtual methods
.method public final f()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/tr3;->s:Lcom/shabakaty/downloader/tr3;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/tr3;->t:Lcom/shabakaty/downloader/tr3;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
