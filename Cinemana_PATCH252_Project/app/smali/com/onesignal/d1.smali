.class public Lcom/onesignal/d1;
.super Ljava/lang/Object;
.source "PermissionsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/onesignal/PermissionsActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    sget-object p1, Lcom/onesignal/q0$x;->s:Lcom/onesignal/q0$x;

    const/4 p2, 0x1

    invoke-static {p2, p1}, Lcom/onesignal/o;->j(ZLcom/onesignal/q0$x;)V

    return-void
.end method
