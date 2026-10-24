.class public Lcom/onesignal/y1$d;
.super Ljava/lang/Object;
.source "WebViewManager.java"

# interfaces
.implements Lcom/onesignal/y1$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/y1;->f(Lcom/onesignal/y1$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/onesignal/y1$f;

.field public final synthetic b:Lcom/onesignal/y1;


# direct methods
.method public constructor <init>(Lcom/onesignal/y1;Lcom/onesignal/y1$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/y1$d;->b:Lcom/onesignal/y1;

    iput-object p2, p0, Lcom/onesignal/y1$d;->a:Lcom/onesignal/y1$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/onesignal/y1$d;->b:Lcom/onesignal/y1;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lcom/onesignal/y1;->b:Lcom/onesignal/m;

    .line 3
    iget-object v0, p0, Lcom/onesignal/y1$d;->a:Lcom/onesignal/y1$f;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/onesignal/y1$f;->a()V

    :cond_0
    return-void
.end method
