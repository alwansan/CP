.class public final synthetic Lcom/shabakaty/cinemana/local/PosterFallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic f$0:Lcom/shabakaty/cinemana/local/PosterFallback$State;

.field public final synthetic f$1:Ljava/lang/ref/WeakReference;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/local/PosterFallback$State;Ljava/lang/ref/WeakReference;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/PosterFallback$$ExternalSyntheticLambda0;->f$0:Lcom/shabakaty/cinemana/local/PosterFallback$State;

    iput-object p2, p0, Lcom/shabakaty/cinemana/local/PosterFallback$$ExternalSyntheticLambda0;->f$1:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/shabakaty/cinemana/local/PosterFallback$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/PosterFallback$$ExternalSyntheticLambda0;->f$0:Lcom/shabakaty/cinemana/local/PosterFallback$State;

    iget-object v1, p0, Lcom/shabakaty/cinemana/local/PosterFallback$$ExternalSyntheticLambda0;->f$1:Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/shabakaty/cinemana/local/PosterFallback$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/shabakaty/cinemana/local/PosterFallback;->lambda$controller$1(Lcom/shabakaty/cinemana/local/PosterFallback$State;Ljava/lang/ref/WeakReference;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
