.class public final Lcom/shabakaty/downloader/j44$a;
.super Ljava/lang/Object;
.source "ShabakatyValidator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/j44;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/android/material/textfield/TextInputLayout;

.field public final b:Lcom/shabakaty/downloader/kf2;

.field public final c:Lcom/shabakaty/downloader/kf2;

.field public final d:Lcom/shabakaty/downloader/kf2;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/j44$a;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/j44$a$a;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/j44$a$a;-><init>(Lcom/shabakaty/downloader/j44$a;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/j44$a;->b:Lcom/shabakaty/downloader/kf2;

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/j44$a$b;->r:Lcom/shabakaty/downloader/j44$a$b;

    invoke-static {p1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/j44$a;->c:Lcom/shabakaty/downloader/kf2;

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/j44$a$c;->r:Lcom/shabakaty/downloader/j44$a$c;

    invoke-static {p1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/j44$a;->d:Lcom/shabakaty/downloader/kf2;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/j44$a;->b:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public final b()Lcom/shabakaty/downloader/j44;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/j44;

    iget-object v1, p0, Lcom/shabakaty/downloader/j44$a;->a:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/j44;-><init>(Lcom/google/android/material/textfield/TextInputLayout;Lcom/shabakaty/downloader/nn0;)V

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/j44$a$d;->r:Lcom/shabakaty/downloader/j44$a$d;

    .line 3
    iput-object v1, v0, Lcom/shabakaty/downloader/j44;->c:Lcom/shabakaty/downloader/tm1;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/j44$a;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v1}, Lcom/shabakaty/downloader/vd5;->j(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 5
    iput-boolean v1, v0, Lcom/shabakaty/downloader/j44;->b:Z

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/j44$a;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120131

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7
    iput-object v1, v0, Lcom/shabakaty/downloader/j44;->d:Ljava/lang/String;

    return-object v0
.end method
