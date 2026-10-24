.class public final enum Lcom/shabakaty/downloader/xz4;
.super Ljava/lang/Enum;
.source "Variance.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/xz4;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum t:Lcom/shabakaty/downloader/xz4;

.field public static final enum u:Lcom/shabakaty/downloader/xz4;

.field public static final enum v:Lcom/shabakaty/downloader/xz4;

.field public static final synthetic w:[Lcom/shabakaty/downloader/xz4;


# instance fields
.field public final r:Ljava/lang/String;

.field public final s:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v7, Lcom/shabakaty/downloader/xz4;

    const-string v1, "INVARIANT"

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/xz4;-><init>(Ljava/lang/String;ILjava/lang/String;ZZI)V

    sput-object v7, Lcom/shabakaty/downloader/xz4;->t:Lcom/shabakaty/downloader/xz4;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/xz4;

    const-string v9, "IN_VARIANCE"

    const/4 v10, 0x1

    const-string v11, "in"

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, -0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/shabakaty/downloader/xz4;-><init>(Ljava/lang/String;ILjava/lang/String;ZZI)V

    sput-object v0, Lcom/shabakaty/downloader/xz4;->u:Lcom/shabakaty/downloader/xz4;

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/xz4;

    const-string v16, "OUT_VARIANCE"

    const/16 v17, 0x2

    const-string v18, "out"

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lcom/shabakaty/downloader/xz4;-><init>(Ljava/lang/String;ILjava/lang/String;ZZI)V

    sput-object v1, Lcom/shabakaty/downloader/xz4;->v:Lcom/shabakaty/downloader/xz4;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/shabakaty/downloader/xz4;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sput-object v2, Lcom/shabakaty/downloader/xz4;->w:[Lcom/shabakaty/downloader/xz4;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ZZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/shabakaty/downloader/xz4;->r:Ljava/lang/String;

    .line 3
    iput-boolean p5, p0, Lcom/shabakaty/downloader/xz4;->s:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/xz4;
    .locals 1

    const-class v0, Lcom/shabakaty/downloader/xz4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/xz4;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/xz4;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/xz4;->w:[Lcom/shabakaty/downloader/xz4;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/xz4;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xz4;->r:Ljava/lang/String;

    return-object v0
.end method
