.class public final Lcom/shabakaty/downloader/b80;
.super Lcom/shabakaty/downloader/q70;
.source "CompletablePeek.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/b80$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/c80;

.field public final b:Lcom/shabakaty/downloader/xc0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xc0<",
            "-",
            "Lcom/shabakaty/downloader/mu0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/shabakaty/downloader/xc0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xc0<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/shabakaty/downloader/j2;

.field public final e:Lcom/shabakaty/downloader/j2;

.field public final f:Lcom/shabakaty/downloader/j2;

.field public final g:Lcom/shabakaty/downloader/j2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/c80;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/j2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/c80;",
            "Lcom/shabakaty/downloader/xc0<",
            "-",
            "Lcom/shabakaty/downloader/mu0;",
            ">;",
            "Lcom/shabakaty/downloader/xc0<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lcom/shabakaty/downloader/j2;",
            "Lcom/shabakaty/downloader/j2;",
            "Lcom/shabakaty/downloader/j2;",
            "Lcom/shabakaty/downloader/j2;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/q70;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/b80;->a:Lcom/shabakaty/downloader/c80;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/b80;->b:Lcom/shabakaty/downloader/xc0;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/b80;->c:Lcom/shabakaty/downloader/xc0;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/b80;->d:Lcom/shabakaty/downloader/j2;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/b80;->e:Lcom/shabakaty/downloader/j2;

    .line 7
    iput-object p6, p0, Lcom/shabakaty/downloader/b80;->f:Lcom/shabakaty/downloader/j2;

    .line 8
    iput-object p7, p0, Lcom/shabakaty/downloader/b80;->g:Lcom/shabakaty/downloader/j2;

    return-void
.end method


# virtual methods
.method public f(Lcom/shabakaty/downloader/a80;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/b80;->a:Lcom/shabakaty/downloader/c80;

    new-instance v1, Lcom/shabakaty/downloader/b80$a;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/b80$a;-><init>(Lcom/shabakaty/downloader/b80;Lcom/shabakaty/downloader/a80;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/c80;->a(Lcom/shabakaty/downloader/a80;)V

    return-void
.end method
