.class public final Lcom/shabakaty/downloader/br3$i;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/br3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/br3$d;",
            ">;"
        }
    .end annotation
.end field

.field public final b:J

.field public final c:Ljava/lang/Runnable;

.field public d:Z

.field public final synthetic e:Lcom/shabakaty/downloader/br3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/br3;J)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/br3$i;->e:Lcom/shabakaty/downloader/br3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/br3$i;->a:Ljava/util/Set;

    .line 3
    iput-wide p2, p0, Lcom/shabakaty/downloader/br3$i;->b:J

    .line 4
    new-instance p2, Lcom/shabakaty/downloader/gn5;

    invoke-direct {p2, p0, p1}, Lcom/shabakaty/downloader/gn5;-><init>(Lcom/shabakaty/downloader/br3$i;Lcom/shabakaty/downloader/br3;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/br3$i;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/br3$i;->e:Lcom/shabakaty/downloader/br3;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/br3;->b:Landroid/os/Handler;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/br3$i;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/shabakaty/downloader/br3$i;->d:Z

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/br3$i;->e:Lcom/shabakaty/downloader/br3;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/br3;->b:Landroid/os/Handler;

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/br3$i;->c:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/shabakaty/downloader/br3$i;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
