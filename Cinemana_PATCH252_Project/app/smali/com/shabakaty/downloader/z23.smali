.class public final enum Lcom/shabakaty/downloader/z23;
.super Ljava/lang/Enum;
.source "OSInfluenceType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/z23;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum r:Lcom/shabakaty/downloader/z23;

.field public static final enum s:Lcom/shabakaty/downloader/z23;

.field public static final enum t:Lcom/shabakaty/downloader/z23;

.field public static final enum u:Lcom/shabakaty/downloader/z23;

.field public static final synthetic v:[Lcom/shabakaty/downloader/z23;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/shabakaty/downloader/z23;

    new-instance v1, Lcom/shabakaty/downloader/z23;

    const-string v2, "DIRECT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/downloader/z23;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/downloader/z23;->r:Lcom/shabakaty/downloader/z23;

    aput-object v1, v0, v3

    new-instance v1, Lcom/shabakaty/downloader/z23;

    const-string v2, "INDIRECT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/downloader/z23;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/downloader/z23;->s:Lcom/shabakaty/downloader/z23;

    aput-object v1, v0, v3

    new-instance v1, Lcom/shabakaty/downloader/z23;

    const-string v2, "UNATTRIBUTED"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/downloader/z23;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/downloader/z23;->t:Lcom/shabakaty/downloader/z23;

    aput-object v1, v0, v3

    new-instance v1, Lcom/shabakaty/downloader/z23;

    const-string v2, "DISABLED"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/downloader/z23;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/downloader/z23;->u:Lcom/shabakaty/downloader/z23;

    aput-object v1, v0, v3

    sput-object v0, Lcom/shabakaty/downloader/z23;->v:[Lcom/shabakaty/downloader/z23;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/z23;
    .locals 1

    const-class v0, Lcom/shabakaty/downloader/z23;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/z23;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/z23;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/z23;->v:[Lcom/shabakaty/downloader/z23;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/z23;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/z23;

    return-object v0
.end method


# virtual methods
.method public final f()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/z23;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/z23;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/z23;->r:Lcom/shabakaty/downloader/z23;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/z23;->s:Lcom/shabakaty/downloader/z23;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
