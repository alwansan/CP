.class public final enum Lcom/shabakaty/downloader/qp1$e;
.super Ljava/lang/Enum;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/qp1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/qp1$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum r:Lcom/shabakaty/downloader/qp1$e;

.field public static final enum s:Lcom/shabakaty/downloader/qp1$e;

.field public static final enum t:Lcom/shabakaty/downloader/qp1$e;

.field public static final enum u:Lcom/shabakaty/downloader/qp1$e;

.field public static final enum v:Lcom/shabakaty/downloader/qp1$e;

.field public static final enum w:Lcom/shabakaty/downloader/qp1$e;

.field public static final enum x:Lcom/shabakaty/downloader/qp1$e;

.field public static final synthetic y:[Lcom/shabakaty/downloader/qp1$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/qp1$e;

    const-string v1, "GET_MEMOIZED_IS_INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/qp1$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/qp1$e;->r:Lcom/shabakaty/downloader/qp1$e;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/qp1$e;

    const-string v3, "SET_MEMOIZED_IS_INITIALIZED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/shabakaty/downloader/qp1$e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/downloader/qp1$e;->s:Lcom/shabakaty/downloader/qp1$e;

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/qp1$e;

    const-string v5, "BUILD_MESSAGE_INFO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/shabakaty/downloader/qp1$e;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/shabakaty/downloader/qp1$e;->t:Lcom/shabakaty/downloader/qp1$e;

    .line 4
    new-instance v5, Lcom/shabakaty/downloader/qp1$e;

    const-string v7, "NEW_MUTABLE_INSTANCE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/shabakaty/downloader/qp1$e;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/shabakaty/downloader/qp1$e;->u:Lcom/shabakaty/downloader/qp1$e;

    .line 5
    new-instance v7, Lcom/shabakaty/downloader/qp1$e;

    const-string v9, "NEW_BUILDER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/shabakaty/downloader/qp1$e;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/shabakaty/downloader/qp1$e;->v:Lcom/shabakaty/downloader/qp1$e;

    .line 6
    new-instance v9, Lcom/shabakaty/downloader/qp1$e;

    const-string v11, "GET_DEFAULT_INSTANCE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/shabakaty/downloader/qp1$e;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/shabakaty/downloader/qp1$e;->w:Lcom/shabakaty/downloader/qp1$e;

    .line 7
    new-instance v11, Lcom/shabakaty/downloader/qp1$e;

    const-string v13, "GET_PARSER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/shabakaty/downloader/qp1$e;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/shabakaty/downloader/qp1$e;->x:Lcom/shabakaty/downloader/qp1$e;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/shabakaty/downloader/qp1$e;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Lcom/shabakaty/downloader/qp1$e;->y:[Lcom/shabakaty/downloader/qp1$e;

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

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/qp1$e;
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/qp1$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/qp1$e;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/qp1$e;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/qp1$e;->y:[Lcom/shabakaty/downloader/qp1$e;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/qp1$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/qp1$e;

    return-object v0
.end method
