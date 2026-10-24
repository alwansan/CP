.class public final Lcom/shabakaty/downloader/j44;
.super Ljava/lang/Object;
.source "ShabakatyValidator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/j44$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/material/textfield/TextInputLayout;

.field public b:Z

.field public c:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/String;

.field public final e:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;Lcom/shabakaty/downloader/nn0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/j44;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/p44;->r:Lcom/shabakaty/downloader/p44;

    iput-object p2, p0, Lcom/shabakaty/downloader/j44;->c:Lcom/shabakaty/downloader/tm1;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/j44;->e:Landroid/widget/EditText;

    return-void
.end method
