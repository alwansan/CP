.class public final enum Lcom/shabakaty/downloader/jw4;
.super Ljava/lang/Enum;
.source "UnsignedType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/jw4;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum u:Lcom/shabakaty/downloader/jw4;

.field public static final enum v:Lcom/shabakaty/downloader/jw4;

.field public static final enum w:Lcom/shabakaty/downloader/jw4;

.field public static final enum x:Lcom/shabakaty/downloader/jw4;

.field public static final synthetic y:[Lcom/shabakaty/downloader/jw4;


# instance fields
.field public final r:Lcom/shabakaty/downloader/v20;

.field public final s:Lcom/shabakaty/downloader/hw2;

.field public final t:Lcom/shabakaty/downloader/v20;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/jw4;

    const-string v1, "kotlin/UByte"

    invoke-static {v1}, Lcom/shabakaty/downloader/v20;->e(Ljava/lang/String;)Lcom/shabakaty/downloader/v20;

    move-result-object v1

    const-string v2, "UBYTE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/shabakaty/downloader/jw4;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/v20;)V

    sput-object v0, Lcom/shabakaty/downloader/jw4;->u:Lcom/shabakaty/downloader/jw4;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/jw4;

    const-string v2, "kotlin/UShort"

    invoke-static {v2}, Lcom/shabakaty/downloader/v20;->e(Ljava/lang/String;)Lcom/shabakaty/downloader/v20;

    move-result-object v2

    const-string v4, "USHORT"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/shabakaty/downloader/jw4;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/v20;)V

    sput-object v1, Lcom/shabakaty/downloader/jw4;->v:Lcom/shabakaty/downloader/jw4;

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/jw4;

    const-string v4, "kotlin/UInt"

    invoke-static {v4}, Lcom/shabakaty/downloader/v20;->e(Ljava/lang/String;)Lcom/shabakaty/downloader/v20;

    move-result-object v4

    const-string v6, "UINT"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/shabakaty/downloader/jw4;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/v20;)V

    sput-object v2, Lcom/shabakaty/downloader/jw4;->w:Lcom/shabakaty/downloader/jw4;

    .line 4
    new-instance v4, Lcom/shabakaty/downloader/jw4;

    const-string v6, "kotlin/ULong"

    invoke-static {v6}, Lcom/shabakaty/downloader/v20;->e(Ljava/lang/String;)Lcom/shabakaty/downloader/v20;

    move-result-object v6

    const-string v8, "ULONG"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/shabakaty/downloader/jw4;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/v20;)V

    sput-object v4, Lcom/shabakaty/downloader/jw4;->x:Lcom/shabakaty/downloader/jw4;

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/shabakaty/downloader/jw4;

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    aput-object v2, v6, v7

    aput-object v4, v6, v9

    sput-object v6, Lcom/shabakaty/downloader/jw4;->y:[Lcom/shabakaty/downloader/jw4;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/shabakaty/downloader/v20;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/v20;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/shabakaty/downloader/jw4;->r:Lcom/shabakaty/downloader/v20;

    .line 2
    invoke-virtual {p3}, Lcom/shabakaty/downloader/v20;->j()Lcom/shabakaty/downloader/hw2;

    move-result-object p1

    const-string p2, "classId.shortClassName"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/jw4;->s:Lcom/shabakaty/downloader/hw2;

    .line 3
    new-instance p2, Lcom/shabakaty/downloader/v20;

    invoke-virtual {p3}, Lcom/shabakaty/downloader/v20;->h()Lcom/shabakaty/downloader/fi1;

    move-result-object p3

    invoke-virtual {p1}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Array"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/shabakaty/downloader/v20;-><init>(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/hw2;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/jw4;->t:Lcom/shabakaty/downloader/v20;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/jw4;
    .locals 1

    const-class v0, Lcom/shabakaty/downloader/jw4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/jw4;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/jw4;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/jw4;->y:[Lcom/shabakaty/downloader/jw4;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/jw4;

    return-object v0
.end method
