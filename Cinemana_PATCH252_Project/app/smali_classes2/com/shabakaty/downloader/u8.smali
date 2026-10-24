.class public final enum Lcom/shabakaty/downloader/u8;
.super Ljava/lang/Enum;
.source "AnnotationQualifierApplicabilityType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/u8;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum s:Lcom/shabakaty/downloader/u8;

.field public static final enum t:Lcom/shabakaty/downloader/u8;

.field public static final enum u:Lcom/shabakaty/downloader/u8;

.field public static final enum v:Lcom/shabakaty/downloader/u8;

.field public static final enum w:Lcom/shabakaty/downloader/u8;

.field public static final enum x:Lcom/shabakaty/downloader/u8;

.field public static final synthetic y:[Lcom/shabakaty/downloader/u8;


# instance fields
.field public final r:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/u8;

    const-string v1, "METHOD_RETURN_TYPE"

    const/4 v2, 0x0

    const-string v3, "METHOD"

    invoke-direct {v0, v1, v2, v3}, Lcom/shabakaty/downloader/u8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/u8;->s:Lcom/shabakaty/downloader/u8;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/u8;

    const-string v3, "VALUE_PARAMETER"

    const/4 v4, 0x1

    const-string v5, "PARAMETER"

    invoke-direct {v1, v3, v4, v5}, Lcom/shabakaty/downloader/u8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/shabakaty/downloader/u8;->t:Lcom/shabakaty/downloader/u8;

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/u8;

    const-string v5, "FIELD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lcom/shabakaty/downloader/u8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/shabakaty/downloader/u8;->u:Lcom/shabakaty/downloader/u8;

    .line 4
    new-instance v5, Lcom/shabakaty/downloader/u8;

    const-string v7, "TYPE_USE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lcom/shabakaty/downloader/u8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/shabakaty/downloader/u8;->v:Lcom/shabakaty/downloader/u8;

    .line 5
    new-instance v9, Lcom/shabakaty/downloader/u8;

    const-string v10, "TYPE_PARAMETER_BOUNDS"

    const/4 v11, 0x4

    invoke-direct {v9, v10, v11, v7}, Lcom/shabakaty/downloader/u8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/shabakaty/downloader/u8;->w:Lcom/shabakaty/downloader/u8;

    .line 6
    new-instance v7, Lcom/shabakaty/downloader/u8;

    const-string v10, "TYPE_PARAMETER"

    const/4 v12, 0x5

    invoke-direct {v7, v10, v12, v10}, Lcom/shabakaty/downloader/u8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/shabakaty/downloader/u8;->x:Lcom/shabakaty/downloader/u8;

    const/4 v10, 0x6

    new-array v10, v10, [Lcom/shabakaty/downloader/u8;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    aput-object v9, v10, v11

    aput-object v7, v10, v12

    sput-object v10, Lcom/shabakaty/downloader/u8;->y:[Lcom/shabakaty/downloader/u8;

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

    iput-object p3, p0, Lcom/shabakaty/downloader/u8;->r:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/u8;
    .locals 1

    const-class v0, Lcom/shabakaty/downloader/u8;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/u8;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/u8;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/u8;->y:[Lcom/shabakaty/downloader/u8;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/u8;

    return-object v0
.end method
