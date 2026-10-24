.class public final Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl$b$a;
.super Lcom/shabakaty/downloader/ui4;
.source "FlowsExtensions.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.utils.extensions.ObserverWhileStartedImpl$onStateChanged$1$1"
    f = "FlowsExtensions.kt"
    l = {
        0x22
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl$b;->t(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
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


# instance fields
.field public v:I

.field public synthetic w:Ljava/lang/Object;

.field public final synthetic x:Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl<",
            "TT;>;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl$b$a;->x:Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance v0, Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl$b$a;

    iget-object v1, p0, Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl$b$a;->x:Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl;

    invoke-direct {v0, v1, p2}, Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl$b$a;-><init>(Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl$b$a;->w:Ljava/lang/Object;

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl$b$a;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/ud0<",
            "*>;)",
            "Lcom/shabakaty/downloader/ud0<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl$b$a;

    iget-object v1, p0, Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl$b$a;->x:Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl;

    invoke-direct {v0, v1, p2}, Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl$b$a;-><init>(Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl$b$a;->w:Ljava/lang/Object;

    return-object v0
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl$b$a;->v:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl$b$a;->w:Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl$b$a;->x:Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl;->s:Lcom/shabakaty/downloader/hn1;

    .line 6
    iput v2, p0, Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl$b$a;->v:I

    invoke-interface {v1, p1, p0}, Lcom/shabakaty/downloader/hn1;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
