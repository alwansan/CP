.class public final Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl;
.super Ljava/lang/Object;
.source "FlowsExtensions.kt"

# interfaces
.implements Landroidx/lifecycle/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/f;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002BD\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\"\u0010\u000b\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000c\u0010\r\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl;",
        "T",
        "Landroidx/lifecycle/f;",
        "Lcom/shabakaty/downloader/rh2;",
        "lifecycleOwner",
        "Lcom/shabakaty/downloader/te1;",
        "flow",
        "Lkotlin/Function2;",
        "Lcom/shabakaty/downloader/ud0;",
        "Lcom/shabakaty/downloader/qv4;",
        "",
        "collector",
        "<init>",
        "(Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/hn1;)V",
        "app_productionBetaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/te1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/te1<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final s:Lcom/shabakaty/downloader/hn1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/hn1<",
            "TT;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public t:Lcom/shabakaty/downloader/e92;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/hn1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/rh2;",
            "Lcom/shabakaty/downloader/te1<",
            "+TT;>;",
            "Lcom/shabakaty/downloader/hn1<",
            "-TT;-",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl;->r:Lcom/shabakaty/downloader/te1;

    .line 3
    iput-object p3, p0, Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl;->s:Lcom/shabakaty/downloader/hn1;

    .line 4
    invoke-interface {p1}, Lcom/shabakaty/downloader/rh2;->getLifecycle()Landroidx/lifecycle/e;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/e;->a(Lcom/shabakaty/downloader/qh2;)V

    return-void
.end method


# virtual methods
.method public j(Lcom/shabakaty/downloader/rh2;Landroidx/lifecycle/e$b;)V
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl;->t:Lcom/shabakaty/downloader/e92;

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/e92;->b(Ljava/util/concurrent/CancellationException;)V

    .line 4
    :goto_0
    iput-object v0, p0, Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl;->t:Lcom/shabakaty/downloader/e92;

    goto :goto_1

    .line 5
    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/cl3;->e(Lcom/shabakaty/downloader/rh2;)Lcom/shabakaty/downloader/ih2;

    move-result-object v1

    new-instance p1, Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl$b;

    invoke-direct {p1, p0, v0}, Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl$b;-><init>(Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl;Lcom/shabakaty/downloader/ud0;)V

    .line 6
    new-instance v4, Lcom/shabakaty/downloader/kh2;

    invoke-direct {v4, v1, p1, v0}, Lcom/shabakaty/downloader/kh2;-><init>(Lcom/shabakaty/downloader/ih2;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)V

    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl;->t:Lcom/shabakaty/downloader/e92;

    :goto_1
    return-void
.end method
