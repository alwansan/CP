.class public final enum Lcom/shabakaty/downloader/tk2$d;
.super Ljava/lang/Enum;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/tk2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/tk2$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum s:Lcom/shabakaty/downloader/tk2$d;

.field public static final enum t:Lcom/shabakaty/downloader/tk2$d;

.field public static final enum u:Lcom/shabakaty/downloader/tk2$d;

.field public static final enum v:Lcom/shabakaty/downloader/tk2$d;

.field public static final synthetic w:[Lcom/shabakaty/downloader/tk2$d;


# instance fields
.field public final r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/tk2$d;

    const-string v1, "VERBOSE"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/shabakaty/downloader/tk2$d;-><init>(Ljava/lang/String;II)V

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/tk2$d;

    const-string v4, "DEBUG"

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-direct {v1, v4, v5, v6}, Lcom/shabakaty/downloader/tk2$d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/shabakaty/downloader/tk2$d;->s:Lcom/shabakaty/downloader/tk2$d;

    .line 3
    new-instance v4, Lcom/shabakaty/downloader/tk2$d;

    const-string v7, "INFO"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v3, v8}, Lcom/shabakaty/downloader/tk2$d;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/shabakaty/downloader/tk2$d;->t:Lcom/shabakaty/downloader/tk2$d;

    .line 4
    new-instance v7, Lcom/shabakaty/downloader/tk2$d;

    const-string v9, "WARN"

    const/4 v10, 0x5

    invoke-direct {v7, v9, v6, v10}, Lcom/shabakaty/downloader/tk2$d;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/shabakaty/downloader/tk2$d;->u:Lcom/shabakaty/downloader/tk2$d;

    .line 5
    new-instance v9, Lcom/shabakaty/downloader/tk2$d;

    const-string v11, "ERROR"

    const/4 v12, 0x6

    invoke-direct {v9, v11, v8, v12}, Lcom/shabakaty/downloader/tk2$d;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/shabakaty/downloader/tk2$d;->v:Lcom/shabakaty/downloader/tk2$d;

    new-array v10, v10, [Lcom/shabakaty/downloader/tk2$d;

    aput-object v0, v10, v2

    aput-object v1, v10, v5

    aput-object v4, v10, v3

    aput-object v7, v10, v6

    aput-object v9, v10, v8

    .line 6
    sput-object v10, Lcom/shabakaty/downloader/tk2$d;->w:[Lcom/shabakaty/downloader/tk2$d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/shabakaty/downloader/tk2$d;->r:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/tk2$d;
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/tk2$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/tk2$d;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/tk2$d;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/tk2$d;->w:[Lcom/shabakaty/downloader/tk2$d;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/tk2$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/tk2$d;

    return-object v0
.end method
