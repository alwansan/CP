.class public final Lcom/shabakaty/downloader/e56;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-api@@19.0.1"


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/shabakaty/downloader/l6$b;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gb;Lcom/shabakaty/downloader/l6$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/e56;->b:Lcom/shabakaty/downloader/l6$b;

    new-instance p2, Lcom/shabakaty/downloader/wz5;

    .line 1
    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/wz5;-><init>(Lcom/shabakaty/downloader/e56;)V

    .line 2
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/gb;->a(Lcom/shabakaty/downloader/gb$a;)V

    new-instance p1, Ljava/util/HashSet;

    .line 3
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/e56;->a:Ljava/util/Set;

    return-void
.end method
