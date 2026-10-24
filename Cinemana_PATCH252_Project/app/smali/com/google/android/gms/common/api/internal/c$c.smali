.class public final Lcom/google/android/gms/common/api/internal/c$c;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.4.0"

# interfaces
.implements Lcom/shabakaty/downloader/gb5;
.implements Lcom/shabakaty/downloader/ij$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/common/api/a$f;

.field public final b:Lcom/shabakaty/downloader/j9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/j9<",
            "*>;"
        }
    .end annotation
.end field

.field public c:Lcom/shabakaty/downloader/uw1;

.field public d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public final synthetic f:Lcom/google/android/gms/common/api/internal/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/c;Lcom/google/android/gms/common/api/a$f;Lcom/shabakaty/downloader/j9;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$f;",
            "Lcom/shabakaty/downloader/j9<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/c$c;->f:Lcom/google/android/gms/common/api/internal/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/c$c;->c:Lcom/shabakaty/downloader/uw1;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/c$c;->d:Ljava/util/Set;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/c$c;->e:Z

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/c$c;->a:Lcom/google/android/gms/common/api/a$f;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/c$c;->b:Lcom/shabakaty/downloader/j9;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/gb0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$c;->f:Lcom/google/android/gms/common/api/internal/c;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    .line 3
    new-instance v1, Lcom/google/android/gms/common/api/internal/r;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/r;-><init>(Lcom/google/android/gms/common/api/internal/c$c;Lcom/shabakaty/downloader/gb0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Lcom/shabakaty/downloader/gb0;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c$c;->f:Lcom/google/android/gms/common/api/internal/c;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/c;->x:Ljava/util/Map;

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/c$c;->b:Lcom/shabakaty/downloader/j9;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/c$a;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 5
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/common/internal/a;->c(Landroid/os/Handler;)V

    .line 7
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/c$a;->b:Lcom/google/android/gms/common/api/a$f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x19

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    const-string v4, "onSignInFailed for "

    const-string v6, " with "

    invoke-static {v5, v4, v2, v6, v3}, Lcom/shabakaty/downloader/nm0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/a$f;->s(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/c$a;->g(Lcom/shabakaty/downloader/gb0;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
