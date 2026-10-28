.class public Lcom/shabakaty/cinemana/local/AccountUi$Builder;
.super Landroid/app/AlertDialog$Builder;
.source "AccountUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/local/AccountUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public show()Landroid/app/AlertDialog;
    .locals 1

    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/AccountUi;->style(Landroid/app/AlertDialog;)V

    return-object v0
.end method
