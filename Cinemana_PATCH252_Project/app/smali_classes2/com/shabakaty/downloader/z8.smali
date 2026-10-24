.class public final enum Lcom/shabakaty/downloader/z8;
.super Ljava/lang/Enum;
.source "AnnotationUseSiteTarget.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/z8;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/shabakaty/downloader/z8;

.field public static final synthetic B:[Lcom/shabakaty/downloader/z8;

.field public static final enum s:Lcom/shabakaty/downloader/z8;

.field public static final enum t:Lcom/shabakaty/downloader/z8;

.field public static final enum u:Lcom/shabakaty/downloader/z8;

.field public static final enum v:Lcom/shabakaty/downloader/z8;

.field public static final enum w:Lcom/shabakaty/downloader/z8;

.field public static final enum x:Lcom/shabakaty/downloader/z8;

.field public static final enum y:Lcom/shabakaty/downloader/z8;

.field public static final enum z:Lcom/shabakaty/downloader/z8;


# instance fields
.field public final r:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/z8;

    const-string v1, "FIELD"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    invoke-direct {v0, v1, v2, v3}, Lcom/shabakaty/downloader/z8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 3
    sput-object v0, Lcom/shabakaty/downloader/z8;->s:Lcom/shabakaty/downloader/z8;

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/z8;

    const-string v4, "FILE"

    const/4 v5, 0x1

    .line 5
    invoke-direct {v1, v4, v5, v3}, Lcom/shabakaty/downloader/z8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    sput-object v1, Lcom/shabakaty/downloader/z8;->t:Lcom/shabakaty/downloader/z8;

    .line 7
    new-instance v4, Lcom/shabakaty/downloader/z8;

    const-string v6, "PROPERTY"

    const/4 v7, 0x2

    .line 8
    invoke-direct {v4, v6, v7, v3}, Lcom/shabakaty/downloader/z8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    sput-object v4, Lcom/shabakaty/downloader/z8;->u:Lcom/shabakaty/downloader/z8;

    .line 10
    new-instance v6, Lcom/shabakaty/downloader/z8;

    const-string v8, "PROPERTY_GETTER"

    const/4 v9, 0x3

    const-string v10, "get"

    invoke-direct {v6, v8, v9, v10}, Lcom/shabakaty/downloader/z8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/shabakaty/downloader/z8;->v:Lcom/shabakaty/downloader/z8;

    .line 11
    new-instance v8, Lcom/shabakaty/downloader/z8;

    const-string v10, "PROPERTY_SETTER"

    const/4 v11, 0x4

    const-string v12, "set"

    invoke-direct {v8, v10, v11, v12}, Lcom/shabakaty/downloader/z8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/shabakaty/downloader/z8;->w:Lcom/shabakaty/downloader/z8;

    .line 12
    new-instance v10, Lcom/shabakaty/downloader/z8;

    const-string v12, "RECEIVER"

    const/4 v13, 0x5

    .line 13
    invoke-direct {v10, v12, v13, v3}, Lcom/shabakaty/downloader/z8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 14
    sput-object v10, Lcom/shabakaty/downloader/z8;->x:Lcom/shabakaty/downloader/z8;

    .line 15
    new-instance v3, Lcom/shabakaty/downloader/z8;

    const-string v12, "CONSTRUCTOR_PARAMETER"

    const/4 v14, 0x6

    const-string v15, "param"

    invoke-direct {v3, v12, v14, v15}, Lcom/shabakaty/downloader/z8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/shabakaty/downloader/z8;->y:Lcom/shabakaty/downloader/z8;

    .line 16
    new-instance v12, Lcom/shabakaty/downloader/z8;

    const-string v15, "SETTER_PARAMETER"

    const/4 v14, 0x7

    const-string v13, "setparam"

    invoke-direct {v12, v15, v14, v13}, Lcom/shabakaty/downloader/z8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/shabakaty/downloader/z8;->z:Lcom/shabakaty/downloader/z8;

    .line 17
    new-instance v13, Lcom/shabakaty/downloader/z8;

    const-string v15, "PROPERTY_DELEGATE_FIELD"

    const/16 v14, 0x8

    const-string v11, "delegate"

    invoke-direct {v13, v15, v14, v11}, Lcom/shabakaty/downloader/z8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/shabakaty/downloader/z8;->A:Lcom/shabakaty/downloader/z8;

    const/16 v11, 0x9

    new-array v11, v11, [Lcom/shabakaty/downloader/z8;

    aput-object v0, v11, v2

    aput-object v1, v11, v5

    aput-object v4, v11, v7

    aput-object v6, v11, v9

    const/4 v0, 0x4

    aput-object v8, v11, v0

    const/4 v0, 0x5

    aput-object v10, v11, v0

    const/4 v0, 0x6

    aput-object v3, v11, v0

    const/4 v0, 0x7

    aput-object v12, v11, v0

    aput-object v13, v11, v14

    sput-object v11, Lcom/shabakaty/downloader/z8;->B:[Lcom/shabakaty/downloader/z8;

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

    if-nez p3, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/vd5;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lcom/shabakaty/downloader/z8;->r:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/z8;
    .locals 1

    const-class v0, Lcom/shabakaty/downloader/z8;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/z8;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/z8;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/z8;->B:[Lcom/shabakaty/downloader/z8;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/z8;

    return-object v0
.end method
