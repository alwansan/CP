.class public final enum Lcom/shabakaty/downloader/vt$a;
.super Ljava/lang/Enum;
.source "CameraInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/vt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/vt$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum s:Lcom/shabakaty/downloader/vt$a;

.field public static final enum t:Lcom/shabakaty/downloader/vt$a;

.field public static final enum u:Lcom/shabakaty/downloader/vt$a;

.field public static final enum v:Lcom/shabakaty/downloader/vt$a;

.field public static final enum w:Lcom/shabakaty/downloader/vt$a;

.field public static final enum x:Lcom/shabakaty/downloader/vt$a;

.field public static final enum y:Lcom/shabakaty/downloader/vt$a;

.field public static final synthetic z:[Lcom/shabakaty/downloader/vt$a;


# instance fields
.field public final r:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/vt$a;

    const-string v1, "PENDING_OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/shabakaty/downloader/vt$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/shabakaty/downloader/vt$a;->s:Lcom/shabakaty/downloader/vt$a;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/vt$a;

    const-string v3, "OPENING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/shabakaty/downloader/vt$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/shabakaty/downloader/vt$a;->t:Lcom/shabakaty/downloader/vt$a;

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/vt$a;

    const-string v5, "OPEN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/shabakaty/downloader/vt$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/shabakaty/downloader/vt$a;->u:Lcom/shabakaty/downloader/vt$a;

    .line 4
    new-instance v5, Lcom/shabakaty/downloader/vt$a;

    const-string v7, "CLOSING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v4}, Lcom/shabakaty/downloader/vt$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcom/shabakaty/downloader/vt$a;->v:Lcom/shabakaty/downloader/vt$a;

    .line 5
    new-instance v7, Lcom/shabakaty/downloader/vt$a;

    const-string v9, "CLOSED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v2}, Lcom/shabakaty/downloader/vt$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lcom/shabakaty/downloader/vt$a;->w:Lcom/shabakaty/downloader/vt$a;

    .line 6
    new-instance v9, Lcom/shabakaty/downloader/vt$a;

    const-string v11, "RELEASING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v4}, Lcom/shabakaty/downloader/vt$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Lcom/shabakaty/downloader/vt$a;->x:Lcom/shabakaty/downloader/vt$a;

    .line 7
    new-instance v11, Lcom/shabakaty/downloader/vt$a;

    const-string v13, "RELEASED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v2}, Lcom/shabakaty/downloader/vt$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v11, Lcom/shabakaty/downloader/vt$a;->y:Lcom/shabakaty/downloader/vt$a;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/shabakaty/downloader/vt$a;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Lcom/shabakaty/downloader/vt$a;->z:[Lcom/shabakaty/downloader/vt$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-boolean p3, p0, Lcom/shabakaty/downloader/vt$a;->r:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/vt$a;
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/vt$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/vt$a;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/vt$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/vt$a;->z:[Lcom/shabakaty/downloader/vt$a;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/vt$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/vt$a;

    return-object v0
.end method
