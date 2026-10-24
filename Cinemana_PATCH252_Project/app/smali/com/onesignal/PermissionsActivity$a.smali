.class public Lcom/onesignal/PermissionsActivity$a;
.super Ljava/lang/Object;
.source "PermissionsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/PermissionsActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:[I

.field public final synthetic s:Lcom/onesignal/PermissionsActivity;


# direct methods
.method public constructor <init>(Lcom/onesignal/PermissionsActivity;[I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/PermissionsActivity$a;->s:Lcom/onesignal/PermissionsActivity;

    iput-object p2, p0, Lcom/onesignal/PermissionsActivity$a;->r:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/onesignal/PermissionsActivity$a;->r:[I

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    aget v0, v0, v3

    if-nez v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_1

    .line 2
    sget-object v0, Lcom/onesignal/q0$x;->r:Lcom/onesignal/q0$x;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/onesignal/q0$x;->s:Lcom/onesignal/q0$x;

    .line 3
    :goto_0
    invoke-static {v2, v0}, Lcom/onesignal/o;->j(ZLcom/onesignal/q0$x;)V

    if-eqz v3, :cond_2

    .line 4
    invoke-static {}, Lcom/onesignal/o;->k()V

    goto :goto_1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/onesignal/PermissionsActivity$a;->s:Lcom/onesignal/PermissionsActivity;

    sget-boolean v1, Lcom/onesignal/PermissionsActivity;->r:Z

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-boolean v1, Lcom/onesignal/PermissionsActivity;->t:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/onesignal/PermissionsActivity;->u:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/onesignal/o;->i:Ljava/lang/String;

    .line 8
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/s2;->g(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 9
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/onesignal/q0;->l()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120166

    .line 10
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120164

    .line 11
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/onesignal/e1;

    invoke-direct {v2, v0}, Lcom/onesignal/e1;-><init>(Lcom/onesignal/PermissionsActivity;)V

    const v3, 0x7f120165

    .line 12
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/onesignal/d1;

    invoke-direct {v2, v0}, Lcom/onesignal/d1;-><init>(Lcom/onesignal/PermissionsActivity;)V

    const v0, 0x1040009

    .line 13
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 15
    :cond_3
    invoke-static {}, Lcom/onesignal/o;->c()V

    :goto_1
    return-void
.end method
