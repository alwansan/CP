.class public abstract Lcom/shabakaty/downloader/sj1;
.super Lcom/shabakaty/downloader/wi1;
.source "FragmentHostCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/wi1;"
    }
.end annotation


# instance fields
.field public final r:Landroid/app/Activity;

.field public final s:Landroid/content/Context;

.field public final t:Landroid/os/Handler;

.field public final u:Landroidx/fragment/app/q;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ji1;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/shabakaty/downloader/wi1;-><init>()V

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/wj1;

    invoke-direct {v1}, Lcom/shabakaty/downloader/wj1;-><init>()V

    iput-object v1, p0, Lcom/shabakaty/downloader/sj1;->u:Landroidx/fragment/app/q;

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/sj1;->r:Landroid/app/Activity;

    const-string v1, "context == null"

    .line 5
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/fl3;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/shabakaty/downloader/sj1;->s:Landroid/content/Context;

    .line 6
    iput-object v0, p0, Lcom/shabakaty/downloader/sj1;->t:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract d(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract e()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public abstract f()Landroid/view/LayoutInflater;
.end method

.method public abstract g(Landroidx/fragment/app/Fragment;)Z
.end method

.method public abstract h(Ljava/lang/String;)Z
.end method

.method public abstract i()V
.end method
