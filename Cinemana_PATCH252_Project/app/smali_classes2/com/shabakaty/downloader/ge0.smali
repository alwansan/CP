.class public interface abstract Lcom/shabakaty/downloader/ge0;
.super Ljava/lang/Object;
.source "CookieJar.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/ge0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/fe0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/fe0;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ge0;->a:Lcom/shabakaty/downloader/ge0;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/shabakaty/downloader/qw1;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qw1;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ee0;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(Lcom/shabakaty/downloader/qw1;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qw1;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ee0;",
            ">;)V"
        }
    .end annotation
.end method
