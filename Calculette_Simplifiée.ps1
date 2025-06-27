
#----------------------------------Simplification du code-------------------------------------------------

#----------------Interface graphique---------------------
Add-Type -AssemblyName System.Windows.Forms
$Form = New-Object System.Windows.Forms.Form
$Form.Text = "Calculatrice"
$Form.Width = 210
$Form.Height = 300
$Form.AutoSize = $true

$0 = New-Object System.Windows.Forms.Button
$0.Location = New-Object System.Drawing.Size(20,250)
$0.Size = New-Object System.Drawing.Size(30,30)
$0.Text = "0"
$0.Visible = $true
$Form.Controls.Add($0)
$0.BackColor = [System.Drawing.Color]::LightBlue

$1 = New-Object System.Windows.Forms.Button
$1.Location = New-Object System.Drawing.Size(20,210)
$1.Size = New-Object System.Drawing.Size(30,30)
$1.Text = "1"
$1.Visible = $true
$Form.Controls.Add($1)
$1.BackColor = [System.Drawing.Color]::LightBlue

$2 = New-Object System.Windows.Forms.Button
$2.Location = New-Object System.Drawing.Size(60,210)
$2.Size = New-Object System.Drawing.Size(30,30)
$2.Text = "2"
$2.Visible = $true
$Form.Controls.Add($2)
$2.BackColor = [System.Drawing.Color]::LightBlue

$3 = New-Object System.Windows.Forms.Button
$3.Location = New-Object System.Drawing.Size(100,210)
$3.Size = New-Object System.Drawing.Size(30,30)
$3.Text = "3"
$3.Visible = $true
$Form.Controls.Add($3)
$3.BackColor = [System.Drawing.Color]::LightBlue

$4 = New-Object System.Windows.Forms.Button
$4.Location = New-Object System.Drawing.Size(20,170)
$4.Size = New-Object System.Drawing.Size(30,30)
$4.Text = "4"
$4.Visible = $true
$Form.Controls.Add($4)
$4.BackColor = [System.Drawing.Color]::LightBlue

$5 = New-Object System.Windows.Forms.Button
$5.Location = New-Object System.Drawing.Size(60,170)
$5.Size = New-Object System.Drawing.Size(30,30)
$5.Text = "5"
$5.Visible = $true
$Form.Controls.Add($5)
$5.BackColor = [System.Drawing.Color]::LightBlue

$6 = New-Object System.Windows.Forms.Button
$6.Location = New-Object System.Drawing.Size(100,170)
$6.Size = New-Object System.Drawing.Size(30,30)
$6.Text = "6"
$6.Visible = $true
$Form.Controls.Add($6)
$6.BackColor = [System.Drawing.Color]::LightBlue

$7 = New-Object System.Windows.Forms.Button
$7.Location = New-Object System.Drawing.Size(20,130)
$7.Size = New-Object System.Drawing.Size(30,30)
$7.Text = "7"
$7.Visible = $true
$Form.Controls.Add($7)
$7.BackColor = [System.Drawing.Color]::LightBlue

$8 = New-Object System.Windows.Forms.Button
$8.Location = New-Object System.Drawing.Size(60,130)
$8.Size = New-Object System.Drawing.Size(30,30)
$8.Text = "8"
$8.Visible = $true
$Form.Controls.Add($8)
$8.BackColor = [System.Drawing.Color]::LightBlue

$9 = New-Object System.Windows.Forms.Button
$9.Location = New-Object System.Drawing.Size(100,130)
$9.Size = New-Object System.Drawing.Size(30,30)
$9.Text = "9"
$9.Visible = $true
$Form.Controls.Add($9)
$9.BackColor = [System.Drawing.Color]::LightBlue

$virgule = New-Object System.Windows.Forms.Button
$virgule.Location = New-Object System.Drawing.Size(60,250)
$virgule.Size = New-Object System.Drawing.Size(30,30)
$virgule.Text = ","
$virgule.Visible = $true
$Form.Controls.Add($virgule)
$virgule.BackColor = [System.Drawing.Color]::LightBlue

$entree = New-Object System.Windows.Forms.Button
$entree.Location = New-Object System.Drawing.Size(100,250)
$entree.Size = New-Object System.Drawing.Size(50,40)
$entree.Text = "Entree ="
$entree.Visible = $true
$Form.Controls.Add($entree)
$entree.BackColor = [System.Drawing.Color]::Blue
$entree.ForeColor = [System.Drawing.Color]::White

$plus = New-Object System.Windows.Forms.Button
$plus.Location = New-Object System.Drawing.Size(140,210)
$plus.Size = New-Object System.Drawing.Size(30,30)
$plus.Text = "+"
$plus.Visible = $true
$Form.Controls.Add($plus)
$plus.BackColor = [System.Drawing.Color]::LightBlue

$moins = New-Object System.Windows.Forms.Button
$moins.Location = New-Object System.Drawing.Size(140,170)
$moins.Size = New-Object System.Drawing.Size(30,30)
$moins.Text = "-"
$moins.Visible = $true
$Form.Controls.Add($moins)
$moins.BackColor = [System.Drawing.Color]::LightBlue

$multiplier = New-Object System.Windows.Forms.Button
$multiplier.Location = New-Object System.Drawing.Size(140,130)
$multiplier.Size = New-Object System.Drawing.Size(30,30)
$multiplier.Text = "x"
$multiplier.Visible = $true
$Form.Controls.Add($multiplier)
$multiplier.BackColor = [System.Drawing.Color]::LightBlue

$diviser = New-Object System.Windows.Forms.Button
$diviser.Location = New-Object System.Drawing.Size(140,90)
$diviser.Size = New-Object System.Drawing.Size(30,30)
$diviser.Text = "/"
$diviser.Visible = $true
$Form.Controls.Add($diviser)
$diviser.BackColor = [System.Drawing.Color]::LightBlue

$ecran = New-Object System.Windows.Forms.Button
$ecran.Location = New-Object System.Drawing.Size(20,30)
$ecran.Size = New-Object System.Drawing.Size(152,30)
$ecran.Text = ""
$ecran.Visible = $true
$Form.Controls.Add($ecran)

$reset = New-Object System.Windows.Forms.Button
$reset.Location = New-Object System.Drawing.Size(20,90)
$reset.Size = New-Object System.Drawing.Size(30,30)
$reset.Text = "AC"
$reset.Visible = $true
$Form.Controls.Add($reset)
$reset.BackColor = [System.Drawing.Color]::OrangeRed

#-------------------Code-----------------------------------

$script:Chiffre1 = ""

$script:Chiffre2 = ""

$script:Operateur = ""


#--------------------------------

$0.Add_Click{
    if ($script:Operateur -eq "") {
        if ($script:Chiffre1 -ne "") {
            $script:Chiffre1+="0"
            $ecran.Text = $script:Chiffre1+$script:Operateur+$script:Chiffre2
        }
    } else {
        if ($script:Chiffre2 -ne "") {
            $script:chiffre2+="0"
            $ecran.Text = $script:Chiffre1+$script:Operateur+$script:Chiffre2
        }
        
    }
}


$1.Add_Click{
    if ($script:Operateur -eq "") {
        $script:Chiffre1+="1"
        $ecran.Text = $script:Chiffre1+$script:Operateur+$script:Chiffre2
    } else {
        $script:chiffre2+="1"
        $ecran.Text = $script:Chiffre1+$script:Operateur+$script:Chiffre2
    }
}


$2.Add_Click{
    if ($script:Operateur -eq "") {
        $script:Chiffre1+="2"
        $ecran.Text = $script:Chiffre1+$script:Operateur+$script:Chiffre2
    } else {
        $script:chiffre2+="2"
        $ecran.Text = $script:Chiffre1+$script:Operateur+$script:Chiffre2
    }
}


$3.Add_Click{
    if ($script:Operateur -eq "") {
        $script:Chiffre1+="3"
        $ecran.Text = $script:Chiffre1+$script:Operateur+$script:Chiffre2
    } else {
        $script:chiffre2+="3"
        $ecran.Text = $script:Chiffre1+$script:Operateur+$script:Chiffre2
    }
}


$4.Add_Click{
    if ($script:Operateur -eq "") {
        $script:Chiffre1+="4"
        $ecran.Text = $script:Chiffre1+$script:Operateur+$script:Chiffre2
    } else {
        $script:chiffre2+="4"
        $ecran.Text = $script:Chiffre1+$script:Operateur+$script:Chiffre2
    }
}


$5.Add_Click{
    if ($script:Operateur -eq "") {
        $script:Chiffre1+="5"
        $ecran.Text = $script:Chiffre1+$script:Operateur+$script:Chiffre2
    } else {
        $script:chiffre2+="5"
        $ecran.Text = $script:Chiffre1+$script:Operateur+$script:Chiffre2
    }
}


$6.Add_Click{
    if ($script:Operateur -eq "") {
        $script:Chiffre1+="6"
        $ecran.Text = $script:Chiffre1+$script:Operateur+$script:Chiffre2
    } else {
        $script:chiffre2+="6"
        $ecran.Text = $script:Chiffre1+$script:Operateur+$script:Chiffre2
    }
}


$7.Add_Click{
    if ($script:Operateur -eq "") {
        $script:Chiffre1+="7"
        $ecran.Text = $script:Chiffre1+$script:Operateur+$script:Chiffre2
    } else {
        $script:chiffre2+="7"
        $ecran.Text = $script:Chiffre1+$script:Operateur+$script:Chiffre2
    }
}


$8.Add_Click{
    if ($script:Operateur -eq "") {
        $script:Chiffre1+="8"
        $ecran.Text = $script:Chiffre1+$script:Operateur+$script:Chiffre2
    } else {
        $script:chiffre2+="8"
        $ecran.Text = $script:Chiffre1+$script:Operateur+$script:Chiffre2
    }
}


$9.Add_Click{
    if ($script:Operateur -eq "") {
        $script:Chiffre1+="9"
        $ecran.Text = $script:Chiffre1+$script:Operateur+$script:Chiffre2
    } else {
        $script:chiffre2+="9"
        $ecran.Text = $script:Chiffre1+$script:Operateur+$script:Chiffre2
    }
}


$plus.Add_Click{
    if ($script:Chiffre1 -ne "") {
        $script:Operateur="+"
    }
}


$moins.Add_Click{
    if ($script:Chiffre1 -ne "") {
        $script:Operateur="-"
    }
}


$multiplier.Add_Click{
    if ($script:Chiffre1) {
        $script:Operateur="x"
    }
}

$diviser.Add_Click{
    if ($script:Chiffre1) {
        $script:Operateur="/"
    }
}

$virgule.Add_Click{
    if ($script:Operateur -eq "") {
        if (-not $script:Chiffre1.Contains(".") -and $script:Chiffre1 -ne "") {
            $script:Chiffre1+="."
            $ecran.Text = $script:Chiffre1+$script:Operateur+$script:Chiffre2
        }
    } else {
        if (-not $script:Chiffre2.Contains(".") -and $script:Chiffre2 -ne "") {
             $script:chiffre2+="."
            $ecran.Text = $script:Chiffre1+$script:Operateur+$script:Chiffre2
        }
    }
}

$reset.Add_Click{
    $script:Chiffre1 = ""
    $script:Chiffre2 = ""
    $script:Operateur = ""
    $ecran.Text = ""
}

$entree.Add_Click{
    if($script:Operateur -eq "+" -and $script:Chiffre1 -ne "" -and $script:Chiffre2 -ne "") {
        Add
    }
    elseif ($script:Operateur -eq "-" -and $script:Chiffre1 -ne "" -and $script:Chiffre2 -ne "") {
        Remove
    }
    elseif ($script:Operateur -eq "x" -and $script:Chiffre1 -ne "" -and $script:Chiffre2 -ne "") {
        Multiply
    }
    elseif ($script:Operateur -eq "/" -and $script:Chiffre1 -ne "" -and $script:Chiffre2 -ne "") {
        Divise
    }
}


#-----------------Fonction----------------

function Add {
    $ecran.Text = [double]$script:Chiffre1 + [double]$script:Chiffre2
    $script:Chiffre1 = ""
    $script:Chiffre2 = ""
    $script:Operateur = ""
}

function Remove {
    $ecran.Text = [double]$script:Chiffre1 - [double]$script:Chiffre2
    $script:Chiffre1 = ""
    $script:Chiffre2 = ""
    $script:Operateur = ""
}

function Multiply {
    $ecran.Text = [double]$script:Chiffre1 * [double]$script:Chiffre2
    $script:Chiffre1 = ""
    $script:Chiffre2 = ""
    $script:Operateur = ""
}

function Divise {
    $ecran.Text = [double]$script:Chiffre1 / [double]$script:Chiffre2
    $script:Chiffre1 = ""
    $script:Chiffre2 = ""
    $script:Operateur = ""
}



$form.TopMost = $true
$form.ShowDialog()