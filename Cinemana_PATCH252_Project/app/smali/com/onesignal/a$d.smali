.class public Lcom/onesignal/a$d;
.super Ljava/lang/Object;
.source "ActivityLifecycleHandler.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final r:Lcom/onesignal/l0$c;

.field public final s:Lcom/onesignal/l0$b;

.field public final t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/onesignal/l0$b;Lcom/onesignal/l0$c;Ljava/lang/String;Lcom/onesignal/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onesignal/a$d;->s:Lcom/onesignal/l0$b;

    .line 3
    iput-object p2, p0, Lcom/onesignal/a$d;->r:Lcom/onesignal/l0$c;

    .line 4
    iput-object p3, p0, Lcom/onesignal/a$d;->t:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/onesignal/q0;->l()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/onesignal/p0;->e(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/onesignal/a$d;->s:Lcom/onesignal/l0$b;

    iget-object v1, p0, Lcom/onesignal/a$d;->t:Ljava/lang/String;

    check-cast v0, Lcom/onesignal/a;

    .line 3
    iget-object v0, v0, Lcom/onesignal/a;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 6
    :cond_0
    sget-object v0, Lcom/onesignal/a;->e:Ljava/util/Map;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/onesignal/a;->d:Ljava/util/Map;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/onesignal/a$d;->r:Lcom/onesignal/l0$c;

    invoke-interface {v0}, Lcom/onesignal/l0$c;->c()V

    :cond_1
    return-void
.end method
