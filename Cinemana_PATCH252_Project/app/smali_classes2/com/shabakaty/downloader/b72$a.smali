.class public final Lcom/shabakaty/downloader/b72$a;
.super Lcom/shabakaty/downloader/af2;
.source "JavaAnnotationMapper.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/b72;-><init>(Lcom/shabakaty/downloader/g62;Lcom/shabakaty/downloader/bg2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/util/Map<",
        "Lcom/shabakaty/downloader/hw2;",
        "+",
        "Lcom/shabakaty/downloader/ge4;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/b72$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/b72$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/b72$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/b72$a;->r:Lcom/shabakaty/downloader/b72$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/k62;->a:Lcom/shabakaty/downloader/k62;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/k62;->b:Lcom/shabakaty/downloader/hw2;

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/ge4;

    const-string v2, "Deprecated in Java"

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/ge4;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v2, Lcom/shabakaty/downloader/x93;

    invoke-direct {v2, v0, v1}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    invoke-static {v2}, Lcom/shabakaty/downloader/kf5;->j(Lcom/shabakaty/downloader/x93;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
