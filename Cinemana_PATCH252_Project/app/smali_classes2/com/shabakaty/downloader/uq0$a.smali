.class public final Lcom/shabakaty/downloader/uq0$a;
.super Lcom/shabakaty/downloader/uq0;
.source "MemberScope.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/uq0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/uq0$a;

.field public static final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/shabakaty/downloader/uq0$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/uq0$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/uq0$a;->a:Lcom/shabakaty/downloader/uq0$a;

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/vq0;->c:Lcom/shabakaty/downloader/vq0$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget v1, Lcom/shabakaty/downloader/vq0;->k:I

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget v2, Lcom/shabakaty/downloader/vq0;->i:I

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget v0, Lcom/shabakaty/downloader/vq0;->j:I

    or-int/2addr v0, v2

    not-int v0, v0

    and-int/2addr v0, v1

    .line 7
    sput v0, Lcom/shabakaty/downloader/uq0$a;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/uq0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    sget v0, Lcom/shabakaty/downloader/uq0$a;->b:I

    return v0
.end method
