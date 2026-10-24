.class Lcom/shabakaty/cinemana/ca1/LegacyDialogs144$1;
.super Ljava/lang/Object;
.source "LegacyDialogs144.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ca1/LegacyDialogs144;->showDownloadLimit(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$selected:[I


# direct methods
.method constructor <init>([I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/LegacyDialogs144$1;->val$selected:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 29
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/LegacyDialogs144$1;->val$selected:[I

    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x0

    aput p2, p1, v0

    .line 30
    return-void
.end method
