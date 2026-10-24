.class public Lcom/shabakaty/downloader/yk4$a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/yk4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lcom/google/android/gms/common/api/a$b;",
        "ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lcom/shabakaty/downloader/tq3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tq3<",
            "TA;",
            "Lcom/shabakaty/downloader/zk4<",
            "TResultT;>;>;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:[Lcom/shabakaty/downloader/ia1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ml3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/shabakaty/downloader/yk4$a;->b:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/yk4;
    .locals 4
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/yk4<",
            "TA;TResultT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yk4$a;->a:Lcom/shabakaty/downloader/tq3;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "execute parameter required"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/a;->b(ZLjava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/hb5;

    iget-object v2, p0, Lcom/shabakaty/downloader/yk4$a;->c:[Lcom/shabakaty/downloader/ia1;

    iget-boolean v3, p0, Lcom/shabakaty/downloader/yk4$a;->b:Z

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/shabakaty/downloader/hb5;-><init>(Lcom/shabakaty/downloader/yk4$a;[Lcom/shabakaty/downloader/ia1;ZI)V

    return-object v0
.end method
