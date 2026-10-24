.class public final Lcom/shabakaty/downloader/x02;
.super Ljava/lang/Object;
.source "InjectionHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/x02$b;
    }
.end annotation


# static fields
.field public static final c:Lcom/shabakaty/downloader/x02$b;

.field public static d:Lcom/shabakaty/downloader/rm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rm1<",
            "Lcom/shabakaty/downloader/x02;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile e:Lcom/shabakaty/downloader/x02;


# instance fields
.field public a:Lcom/shabakaty/downloader/i44;

.field public b:Lcom/shabakaty/downloader/az0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/x02$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/x02$b;-><init>(Lcom/shabakaty/downloader/nn0;)V

    sput-object v0, Lcom/shabakaty/downloader/x02;->c:Lcom/shabakaty/downloader/x02$b;

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/x02$a;->r:Lcom/shabakaty/downloader/x02$a;

    sput-object v0, Lcom/shabakaty/downloader/x02;->d:Lcom/shabakaty/downloader/rm1;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/xk0;->a:Lcom/shabakaty/downloader/uy0;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    check-cast v0, Lcom/shabakaty/downloader/wk0;

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/wk0;->l:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/i44;

    .line 5
    iput-object v1, p0, Lcom/shabakaty/downloader/x02;->a:Lcom/shabakaty/downloader/i44;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/wk0;->m:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/az0;

    .line 7
    iput-object v0, p0, Lcom/shabakaty/downloader/x02;->b:Lcom/shabakaty/downloader/az0;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/nn0;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object p1, Lcom/shabakaty/downloader/xk0;->a:Lcom/shabakaty/downloader/uy0;

    if-nez p1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    check-cast p1, Lcom/shabakaty/downloader/wk0;

    .line 11
    iget-object v0, p1, Lcom/shabakaty/downloader/wk0;->l:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/i44;

    .line 12
    iput-object v0, p0, Lcom/shabakaty/downloader/x02;->a:Lcom/shabakaty/downloader/i44;

    .line 13
    iget-object p1, p1, Lcom/shabakaty/downloader/wk0;->m:Lcom/shabakaty/downloader/oj3;

    invoke-interface {p1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/az0;

    .line 14
    iput-object p1, p0, Lcom/shabakaty/downloader/x02;->b:Lcom/shabakaty/downloader/az0;

    :goto_0
    return-void
.end method
