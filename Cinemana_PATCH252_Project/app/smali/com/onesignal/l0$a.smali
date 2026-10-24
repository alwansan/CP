.class public Lcom/onesignal/l0$a;
.super Landroidx/fragment/app/q$k;
.source "OSSystemConditionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/l0;->a(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/fragment/app/q;

.field public final synthetic b:Lcom/onesignal/l0;


# direct methods
.method public constructor <init>(Lcom/onesignal/l0;Landroidx/fragment/app/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/l0$a;->b:Lcom/onesignal/l0;

    iput-object p2, p0, Lcom/onesignal/l0$a;->a:Landroidx/fragment/app/q;

    invoke-direct {p0}, Landroidx/fragment/app/q$k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/fragment/app/q;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1
    instance-of p1, p2, Lcom/shabakaty/downloader/ct0;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/onesignal/l0$a;->a:Landroidx/fragment/app/q;

    invoke-virtual {p1, p0}, Landroidx/fragment/app/q;->m0(Landroidx/fragment/app/q$k;)V

    .line 3
    iget-object p1, p0, Lcom/onesignal/l0$a;->b:Lcom/onesignal/l0;

    .line 4
    iget-object p1, p1, Lcom/onesignal/l0;->a:Lcom/onesignal/l0$c;

    .line 5
    invoke-interface {p1}, Lcom/onesignal/l0$c;->c()V

    :cond_0
    return-void
.end method
