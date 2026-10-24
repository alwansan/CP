.class public Lcom/onesignal/n;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InAppMessageView.java"


# instance fields
.field public final synthetic a:Lcom/onesignal/y1$f;

.field public final synthetic b:Lcom/onesignal/m;


# direct methods
.method public constructor <init>(Lcom/onesignal/m;Lcom/onesignal/y1$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/n;->b:Lcom/onesignal/m;

    iput-object p2, p0, Lcom/onesignal/n;->a:Lcom/onesignal/y1$f;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/onesignal/n;->b:Lcom/onesignal/m;

    invoke-static {p1}, Lcom/onesignal/m;->a(Lcom/onesignal/m;)V

    .line 2
    iget-object p1, p0, Lcom/onesignal/n;->a:Lcom/onesignal/y1$f;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/onesignal/y1$f;->a()V

    :cond_0
    return-void
.end method
