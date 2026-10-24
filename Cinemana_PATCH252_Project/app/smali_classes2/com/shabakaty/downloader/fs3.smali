.class public final Lcom/shabakaty/downloader/fs3;
.super Ljava/lang/Object;
.source "RequestFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/fs3$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Method;

.field public final b:Lcom/shabakaty/downloader/qw1;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/shabakaty/downloader/ts1;

.field public final f:Lcom/shabakaty/downloader/fr2;

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:[Lcom/shabakaty/downloader/da3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lretrofit2/ParameterHandler<",
            "*>;"
        }
    .end annotation
.end field

.field public final k:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fs3$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/shabakaty/downloader/fs3;->a:Ljava/lang/reflect/Method;

    .line 3
    iget-object v0, p1, Lcom/shabakaty/downloader/fs3$a;->a:Lcom/shabakaty/downloader/lt3;

    iget-object v0, v0, Lcom/shabakaty/downloader/lt3;->c:Lcom/shabakaty/downloader/qw1;

    iput-object v0, p0, Lcom/shabakaty/downloader/fs3;->b:Lcom/shabakaty/downloader/qw1;

    .line 4
    iget-object v0, p1, Lcom/shabakaty/downloader/fs3$a;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/shabakaty/downloader/fs3;->c:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lcom/shabakaty/downloader/fs3$a;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/shabakaty/downloader/fs3;->d:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lcom/shabakaty/downloader/fs3$a;->s:Lcom/shabakaty/downloader/ts1;

    iput-object v0, p0, Lcom/shabakaty/downloader/fs3;->e:Lcom/shabakaty/downloader/ts1;

    .line 7
    iget-object v0, p1, Lcom/shabakaty/downloader/fs3$a;->t:Lcom/shabakaty/downloader/fr2;

    iput-object v0, p0, Lcom/shabakaty/downloader/fs3;->f:Lcom/shabakaty/downloader/fr2;

    .line 8
    iget-boolean v0, p1, Lcom/shabakaty/downloader/fs3$a;->o:Z

    iput-boolean v0, p0, Lcom/shabakaty/downloader/fs3;->g:Z

    .line 9
    iget-boolean v0, p1, Lcom/shabakaty/downloader/fs3$a;->p:Z

    iput-boolean v0, p0, Lcom/shabakaty/downloader/fs3;->h:Z

    .line 10
    iget-boolean v0, p1, Lcom/shabakaty/downloader/fs3$a;->q:Z

    iput-boolean v0, p0, Lcom/shabakaty/downloader/fs3;->i:Z

    .line 11
    iget-object v0, p1, Lcom/shabakaty/downloader/fs3$a;->v:[Lcom/shabakaty/downloader/da3;

    iput-object v0, p0, Lcom/shabakaty/downloader/fs3;->j:[Lcom/shabakaty/downloader/da3;

    .line 12
    iget-boolean p1, p1, Lcom/shabakaty/downloader/fs3$a;->w:Z

    iput-boolean p1, p0, Lcom/shabakaty/downloader/fs3;->k:Z

    return-void
.end method
