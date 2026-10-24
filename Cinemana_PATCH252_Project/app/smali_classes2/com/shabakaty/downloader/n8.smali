.class public final enum Lcom/shabakaty/downloader/n8;
.super Ljava/lang/Enum;
.source "DescriptorRenderer.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/n8;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum t:Lcom/shabakaty/downloader/n8;

.field public static final enum u:Lcom/shabakaty/downloader/n8;

.field public static final enum v:Lcom/shabakaty/downloader/n8;

.field public static final synthetic w:[Lcom/shabakaty/downloader/n8;


# instance fields
.field public final r:Z

.field public final s:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v6, Lcom/shabakaty/downloader/n8;

    const-string v1, "NO_ARGUMENTS"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/n8;-><init>(Ljava/lang/String;IZZI)V

    sput-object v6, Lcom/shabakaty/downloader/n8;->t:Lcom/shabakaty/downloader/n8;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/n8;

    const-string v8, "UNLESS_EMPTY"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x2

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/shabakaty/downloader/n8;-><init>(Ljava/lang/String;IZZI)V

    sput-object v0, Lcom/shabakaty/downloader/n8;->u:Lcom/shabakaty/downloader/n8;

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/n8;

    const-string v2, "ALWAYS_PARENTHESIZED"

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/shabakaty/downloader/n8;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lcom/shabakaty/downloader/n8;->v:Lcom/shabakaty/downloader/n8;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/shabakaty/downloader/n8;

    const/4 v5, 0x0

    aput-object v6, v2, v5

    aput-object v0, v2, v4

    aput-object v1, v2, v3

    sput-object v2, Lcom/shabakaty/downloader/n8;->w:[Lcom/shabakaty/downloader/n8;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-boolean p3, p0, Lcom/shabakaty/downloader/n8;->r:Z

    .line 3
    iput-boolean p4, p0, Lcom/shabakaty/downloader/n8;->s:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZI)V
    .locals 2

    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 4
    :cond_1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    iput-boolean p3, p0, Lcom/shabakaty/downloader/n8;->r:Z

    .line 6
    iput-boolean p4, p0, Lcom/shabakaty/downloader/n8;->s:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/n8;
    .locals 1

    const-class v0, Lcom/shabakaty/downloader/n8;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/n8;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/n8;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/n8;->w:[Lcom/shabakaty/downloader/n8;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/n8;

    return-object v0
.end method
